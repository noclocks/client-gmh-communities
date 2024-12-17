CREATE TABLE mkt.unit_amenity_premiums (
  amenity_id INTEGER NOT NULL REFERENCES mkt.amenities(amenity_id),
  property_id INTEGER NOT NULL REFERENCES mkt.properties(property_id),
  unit_id INTEGER REFERENCES mkt.units(unit_id),
  amenity_name TEXT,
  amenity_category TEXT, -- i.e. TV, Other, etc.
  amenity_premium DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (amenity_id, property_id, unit_id)
);
