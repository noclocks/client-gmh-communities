CREATE TABLE mkt.fees (
  fee_type_id INTEGER REFERENCES mkt.fee_types(fee_type_id),
  property_id INTEGER REFERENCES mkt.properties(property_id),
  fee_amount DECIMAL(5,2) NOT NULL DEFAULT 0.00,
  fee_frequency TEXT NOT NULL CHECK (fee_frequency IN ('Monthly', 'Quarterly', 'Annually')),
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (fee_type_id, property_id)
);
