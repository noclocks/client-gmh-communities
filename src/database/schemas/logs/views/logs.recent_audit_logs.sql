CREATE VIEW logs.recent_audit_logs AS
SELECT *
FROM logs.audit_logs
WHERE created_at > NOW() - INTERVAL '7 days';
