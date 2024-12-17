CREATE SCHEMA IF NOT EXISTS logs;

-- Table: audit_logs
CREATE TABLE logs.audit_logs (
    audit_log_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    schema_name TEXT NOT NULL,
    table_name TEXT NOT NULL,
    operation TEXT NOT NULL,                        -- INSERT, UPDATE, DELETE
    old_data JSONB,                                 -- Data before the operation
    new_data JSONB,                                 -- Data after the operation
    user_id INTEGER,                                -- User responsible for the change
    session_id UUID DEFAULT gen_random_uuid(),      -- Unique session identifier
    query TEXT,                                     -- SQL query executed
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_audit_logs_table_name ON logs.audit_logs (table_name);
CREATE INDEX idx_audit_logs_operation ON logs.audit_logs (operation);
CREATE INDEX idx_audit_logs_created_at ON logs.audit_logs (created_at);

CREATE TABLE logs.error_logs (
    error_log_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    error_message TEXT NOT NULL,
    error_context JSONB,                            -- Context or additional metadata
    user_id INTEGER,
    session_id UUID DEFAULT gen_random_uuid(),
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_error_logs_created_at ON logs.error_logs (created_at);

CREATE TABLE logs.system_logs (
    system_log_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    event_type TEXT NOT NULL,                       -- Example: startup, shutdown
    event_details JSONB,                            -- Metadata about the event
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_system_logs_created_at ON logs.system_logs (created_at);

CREATE TABLE logs.entrata_logs (
    entrata_log_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    request_id UUID NOT NULL,                       -- Unique request identifier
    endpoint TEXT NOT NULL,                         -- Entrata API endpoint called
    operation TEXT NOT NULL,                        -- Example: GET, POST
    status_code INTEGER,                            -- HTTP response status code
    request_payload JSONB,                          -- API request payload
    response_body JSONB,                            -- API response body
    user_id INTEGER,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_entrata_logs_endpoint ON logs.entrata_logs (endpoint);
CREATE INDEX idx_entrata_logs_created_at ON logs.entrata_logs (created_at);

CREATE TABLE logs.market_survey_logs (
    response_log_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    survey_id INTEGER NOT NULL,                     -- Survey associated with the log
    section_id INTEGER,                             -- Section of the survey
    response_id INTEGER,                            -- Individual response identifier
    user_id INTEGER,                                -- User who submitted or changed the response
    property_id INTEGER,                            -- Property related to the survey
    leasing_week_id INTEGER,                        -- Leasing week associated with the survey
    response_data JSONB,                            -- The survey response data
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_market_survey_logs_survey_id ON logs.market_survey_logs (survey_id);
CREATE INDEX idx_market_survey_logs_created_at ON logs.market_survey_logs (created_at);

CREATE TABLE logs.pipeline_logs (
    pipeline_log_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    pipeline_name TEXT NOT NULL,                    -- Name of the data pipeline
    pipeline_status TEXT NOT NULL,                  -- Status: success, failure, running
    data_lineage JSONB,                             -- Metadata about data lineage
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_pipeline_logs_created_at ON logs.pipeline_logs (created_at);
CREATE INDEX idx_pipeline_logs_pipeline_name ON logs.pipeline_logs (pipeline_name);
