CREATE OR REPLACE FUNCTION logs.remove_audit_triggers_from_schema(schema_name TEXT)
RETURNS VOID AS $$
DECLARE
    tbl RECORD;
BEGIN
    FOR tbl IN SELECT tablename FROM pg_tables WHERE schemaname = schema_name LOOP
        PERFORM logs.remove_audit_triggers_from_table(schema_name, tbl.tablename);
    END LOOP;
END;
$$ LANGUAGE plpgsql;
