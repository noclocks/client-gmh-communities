CREATE OR REPLACE FUNCTION logs.add_audit_triggers_to_table(schema_name TEXT, table_name TEXT)
RETURNS VOID AS $$
BEGIN
    EXECUTE format(
        'CREATE TRIGGER audit_trigger_%I AFTER INSERT OR UPDATE OR DELETE ON %I.%I FOR EACH ROW EXECUTE FUNCTION logs.audit_trigger_func();',
        table_name, schema_name, table_name
    );
END;
$$ LANGUAGE plpgsql;
