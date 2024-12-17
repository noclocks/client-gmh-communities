-- Apps: Represents applications tied to tenants
CREATE TABLE auth.apps (
    app_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    tenant_id INTEGER REFERENCES auth.tenants(tenant_id),
    app_name TEXT NOT NULL,
    app_url TEXT NOT NULL,
    app_admin UUID REFERENCES auth.users(user_id),
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
