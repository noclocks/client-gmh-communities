
CREATE TABLE mkt.amenities (
  amenity_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  amenity_name TEXT NOT NULL UNIQUE,
  amenity_level TEXT NOT NULL CHECK (amenity_level IN ('property', 'unit')),
  amenity_description TEXT,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
