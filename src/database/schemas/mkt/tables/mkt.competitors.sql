CREATE TABLE mkt.competitors (
  competitor_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  competitor_property_id INTEGER NOT NULL REFERENCES mkt.properties(property_id),
  associated_property_id INTEGER NOT NULL REFERENCES mkt.properties(property_id),
  competitor_name VARCHAR(255) NOT NULL UNIQUE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
