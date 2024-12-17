CREATE TABLE mkt.parking (
  property_id INTEGER NOT NULL REFERENCES mkt.properties (property_id),
  parking_type_id INTEGER NOT NULL REFERENCES mkt.parking_types (parking_type_id),
  is_required BOOLEAN DEFAULT FALSE,
  is_included BOOLEAN DEFAULT FALSE,
  parking_amount DECIMAL(10, 2) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
