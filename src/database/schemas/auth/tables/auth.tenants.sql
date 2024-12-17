-- Tenants: Represents organizations using the system
CREATE TABLE auth.tenants (
    tenant_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    tenant_name TEXT NOT NULL,
    tenant_domain TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
