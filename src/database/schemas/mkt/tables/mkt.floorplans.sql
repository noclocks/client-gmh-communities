CREATE TABLE mkt.property_floorplans (
  floorplan_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  property_id INTEGER NOT NULL REFERENCES mkt.properties(property_id),
  floorplan_name TEXT NOT NULL,
  floorplan_unit_type TEXT NOT NULL,
  floorplan_identifer TEXT,
  floorplan_description TEXT,
  number_of_bedrooms INTEGER,
  number_of_bathrooms INTEGER,
  square_footage NUMERIC(6, 2),
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
