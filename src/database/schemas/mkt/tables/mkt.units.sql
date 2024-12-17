CREATE TABLE mkt.units (
  unit_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  property_id INTEGER REFERENCES mkt.properties(property_id),
  unit_identifer TEXT,
  unit_rating NUMERIC(3, 1) CHECK (unit_rating >= 0 AND unit_rating <= 5),
  unit_levels INTEGER DEFAULT 1,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
