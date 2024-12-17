-- Roles: Defines roles for users
CREATE TABLE auth.roles (
    role_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    role_name TEXT UNIQUE NOT NULL,
    role_description TEXT,
    role_enabled BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
);
