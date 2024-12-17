CREATE VIEW logs.pipeline_runs AS
SELECT pipeline_name, COUNT(*) AS run_count,
       COUNT(*) FILTER (WHERE pipeline_status = 'success') AS success_count,
       COUNT(*) FILTER (WHERE pipeline_status = 'failure') AS failure_count
FROM logs.pipeline_logs
GROUP BY pipeline_name;
