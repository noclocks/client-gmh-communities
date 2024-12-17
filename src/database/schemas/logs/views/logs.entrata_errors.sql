CREATE VIEW logs.entrata_errors AS
SELECT *
FROM logs.entrata_logs
WHERE status_code >= 400;
