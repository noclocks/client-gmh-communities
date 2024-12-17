CREATE TABLE mkt.notes (
  note_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  property_id INTEGER NOT NULL REFERENCES mkt.properties(property_id),
  note_type TEXT NOT NULL,
  note_content TEXT NOT NULL,
  note_status TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  created_by UUID NOT NULL REFERENCES auth.users(user_id),
  updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  updated_by UUID NOT NULL REFERENCES auth.users(user_id)
);
