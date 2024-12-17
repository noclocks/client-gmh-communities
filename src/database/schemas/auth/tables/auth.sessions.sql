-- Sessions: Tracks active user sessions
CREATE TABLE auth.sessions (
    session_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES auth.users(user_id) ON DELETE CASCADE,
    tenant_id INT REFERENCES auth.tenants(tenant_id) ON DELETE CASCADE,
    app_id INT REFERENCES auth.apps(app_id) ON DELETE CASCADE,
    session_token TEXT NOT NULL,
    expires_at TIMESTAMPTZ NOT NULL,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
