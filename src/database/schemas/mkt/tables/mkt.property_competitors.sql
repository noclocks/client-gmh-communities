CREATE TABLE mkt.property_competitors (
  property_id INTEGER NOT NULL REFERENCES mkt.properties(property_id),
  competitor_id INTEGER NOT NULL REFERENCES mkt.properties(property_id),
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (property_id, competitor_id)
);
