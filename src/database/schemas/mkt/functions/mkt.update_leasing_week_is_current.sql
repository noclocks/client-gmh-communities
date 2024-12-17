-- Function to update the is_current flag
CREATE OR REPLACE FUNCTION mkt.update_leasing_week_is_current_flag()
RETURNS TRIGGER AS $$
BEGIN
    -- Reset all rows to FALSE
    UPDATE mkt.leasing_weeks
    SET is_current = FALSE;

    -- Set the current leasing week to TRUE
    UPDATE mkt.leasing_weeks
    SET is_current = TRUE
    WHERE CURRENT_DATE BETWEEN start_date AND end_date;

    RETURN NULL; -- Triggers on UPDATE/INSERT do not return a value
END;
$$ LANGUAGE plpgsql;
