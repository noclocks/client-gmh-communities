CREATE OR REPLACE FUNCTION logs.remove_audit_triggers_from_table(schema_name TEXT, table_name TEXT)
RETURNS VOID AS $$
BEGIN
    EXECUTE format(
        'DROP TRIGGER IF EXISTS audit_trigger_%I ON %I.%I;',
        table_name, schema_name, table_name
    );
END;
$$ LANGUAGE plpgsql;
