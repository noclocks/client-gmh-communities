CREATE TABLE gmh.property_units (
  unit_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  property_id INTEGER REFERENCES gmh.properties(property_id),
  -- TODO
)
