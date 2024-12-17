-- Insert initial leasing weeks manually
INSERT INTO mkt.leasing_weeks (start_date)
VALUES
    ('2024-01-01'),
    ('2024-01-08'),
    ('2024-01-15');

-- Recursive CTE to generate the remaining weeks for 2024
WITH RECURSIVE generate_weeks AS (
    -- Start with the first week of 2024
    SELECT DATE '2024-01-01' AS start_date
    UNION ALL
    -- Generate subsequent weeks by adding 7 days
    SELECT (start_date + INTERVAL '7 days')::DATE
    FROM generate_weeks
    WHERE start_date + INTERVAL '7 days' < DATE '2025-01-01'
)
-- Insert the generated weeks into the table, avoiding duplicates with LEFT JOIN
INSERT INTO mkt.leasing_weeks (start_date)
SELECT gw.start_date
FROM generate_weeks gw
LEFT JOIN mkt.leasing_weeks lw ON gw.start_date = lw.start_date
WHERE lw.start_date IS NULL;

-- Verify the table data
SELECT * FROM mkt.leasing_weeks;

-- Verify the is_current flag
SELECT * FROM mkt.leasing_weeks WHERE is_current = TRUE;
