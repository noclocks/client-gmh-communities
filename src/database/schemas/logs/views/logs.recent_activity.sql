CREATE OR REPLACE VIEW logs.recent_activity AS
SELECT
    a.created_at,
    'Audit Log' AS log_type,
    a.schema_name || '.' || a.table_name AS context,
    a.operation AS action,
    u.email AS user_email,
    CASE
        WHEN a.operation = 'UPDATE' THEN (
            SELECT string_agg(
                key || ': ' || old_value || ' -> ' || new_value,
                ', '
            )
            FROM (
                SELECT
                    key,
                    a.old_data -> key AS old_value,
                    a.new_data -> key AS new_value
                FROM jsonb_object_keys(a.old_data) AS key
                WHERE a.old_data -> key IS DISTINCT FROM a.new_data -> key
            ) AS changes
        )
        WHEN a.operation = 'INSERT' THEN 'New record: ' || a.new_data::TEXT
        WHEN a.operation = 'DELETE' THEN 'Deleted record: ' || a.old_data::TEXT
        ELSE 'Unknown operation'
    END AS details
FROM logs.audit_logs a
LEFT JOIN auth.users u ON a.user_id = u.user_id
WHERE a.created_at > NOW() - INTERVAL '7 days'

UNION ALL

SELECT
    e.created_at,
    'Error Log' AS log_type,
    NULL AS context,
    'Error' AS action,
    u.email AS user_email,
    e.error_message || ': ' || e.error_context::TEXT AS details
FROM logs.error_logs e
LEFT JOIN auth.users u ON e.user_id = u.user_id
WHERE e.created_at > NOW() - INTERVAL '7 days'

UNION ALL

SELECT
    s.created_at,
    'System Log' AS log_type,
    NULL AS context,
    s.event_type AS action,
    NULL AS user_email,
    s.event_details::TEXT AS details
FROM logs.system_logs s
WHERE s.created_at > NOW() - INTERVAL '7 days'

ORDER BY created_at DESC;
