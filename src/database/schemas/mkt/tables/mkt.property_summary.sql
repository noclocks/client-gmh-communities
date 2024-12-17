CREATE TABLE mkt.property_summary (
  property_id INTEGER PRIMARY KEY REFERENCES mkt.properties(property_id),
  property_name TEXT NOT NULL,
  property_rating NUMERIC(3, 1) CHECK (property_rating >= 0 AND property_rating <= 5),
  property_common_area_rating NUMERIC(3, 1) CHECK (property_common_area_rating >= 0 AND property_common_area_rating <= 5),
)
