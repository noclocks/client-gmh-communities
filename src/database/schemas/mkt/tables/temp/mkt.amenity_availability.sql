CREATE TABLE mkt.amenity_availability (
  amenity_id INTEGER NOT NULL REFERENCES mkt.amenities(amenity_id),
  property_id INTEGER NOT NULL REFERENCES mkt.properties(property_id),
  unit_id INTEGER REFERENCES mkt.units(unit_id),
  amenity_included BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (amenity_id, property_id, unit_id),
  CHECK (
    (amenity_id IS NOT NULL)
    AND (
      (SELECT amenity_level FROM mkt.amenities WHERE amenities.amenity_id = amenity_availability.amenity_id) = 'property' AND unit_id IS NULL
      OR
      (SELECT amenity_level FROM mkt.amenities WHERE amenities.amenity_id = amenity_availability.amenity_id) = 'unit' AND unit_id IS NOT NULL
    )
  )
);
