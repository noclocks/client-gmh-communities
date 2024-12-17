CREATE TABLE mkt.property_amenities (
    amenity_id INTEGER NOT NULL REFERENCES mkt.amenities(amenity_id),
    property_id INTEGER NOT NULL REFERENCES mkt.properties(property_id),
    amenity_name TEXT,
    amenity_availabile BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
