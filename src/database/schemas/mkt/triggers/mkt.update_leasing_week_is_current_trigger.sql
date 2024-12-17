-- Trigger to execute the update_is_current_flag function
CREATE TRIGGER update_is_current_trigger
AFTER INSERT OR UPDATE ON mkt.leasing_weeks
FOR EACH STATEMENT
EXECUTE FUNCTION mkt.update_leasing_week_is_current_flag();
