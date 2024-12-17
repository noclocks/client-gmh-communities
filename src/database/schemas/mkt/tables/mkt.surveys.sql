CREATE TABLE mkt.surveys (
  survey_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  property_id INTEGER NOT NULL REFERENCES mkt.properties(property_id),
  user_id INTEGER NOT NULL REFERENCES mkt.users(user_id),
  leasing_week_id INTEGER NOT NULL REFERENCES mkt.leasing_weeks(week_id),
  survey_date DATE NOT NULL DEFAULT CURRENT_DATE,
  survey_type VARCHAR(50) NOT NULL,
  survey_status VARCHAR(50) NOT NULL,
  survey_notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);
