DROP TABLE IF EXISTS mkt.leasing_weeks CASCADE;

-- Create the leasing_weeks table
CREATE TABLE mkt.leasing_weeks (
    week_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE GENERATED ALWAYS AS (start_date + INTERVAL '6 days') STORED,
    week_number INTEGER GENERATED ALWAYS AS (EXTRACT(WEEK FROM start_date)) STORED,
    year INTEGER GENERATED ALWAYS AS (EXTRACT(YEAR FROM start_date)) STORED,
    quarter INTEGER GENERATED ALWAYS AS (EXTRACT(QUARTER FROM start_date)) STORED, -- Quarter of the leasing week
    fiscal_week INTEGER GENERATED ALWAYS AS (
    CASE
        WHEN EXTRACT(MONTH FROM start_date) >= 10 THEN
            EXTRACT(WEEK FROM start_date) - EXTRACT(WEEK FROM DATE '2024-10-01') + 1
        ELSE
            EXTRACT(WEEK FROM start_date) + (52 - EXTRACT(WEEK FROM DATE '2024-10-01')) + 1
    END
    ) STORED,
    is_current BOOLEAN GENERATED ALWAYS AS (start_date <= CURRENT_DATE AND end_date >= CURRENT_DATE) STORED,
    CONSTRAINT chk_date_range CHECK (start_date <= end_date)
);
