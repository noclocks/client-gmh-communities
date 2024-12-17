CREATE OR REPLACE FUNCTION logs.audit_trigger_func()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO logs.audit_logs (schema_name, table_name, operation, new_data, user_id)
        VALUES (TG_TABLE_SCHEMA, TG_TABLE_NAME, 'INSERT', row_to_json(NEW), COALESCE(current_setting('gmhdatahub.user_id', true)::INT, 0));
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO logs.audit_logs (schema_name, table_name, operation, old_data, new_data, user_id)
        VALUES (TG_TABLE_SCHEMA, TG_TABLE_NAME, 'UPDATE', row_to_json(OLD), row_to_json(NEW), COALESCE(current_setting('gmhdatahub.user_id', true)::INT, 0));
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO logs.audit_logs (schema_name, table_name, operation, old_data, user_id)
        VALUES (TG_TABLE_SCHEMA, TG_TABLE_NAME, 'DELETE', row_to_json(OLD), COALESCE(current_setting('gmhdatahub.user_id', true)::INT, 0));
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
