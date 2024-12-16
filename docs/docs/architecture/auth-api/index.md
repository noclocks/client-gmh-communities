# Authentication API

## Overview
The authentication API secures the system by ensuring that only authorized users can access resources.

## Features
- **Token-Based Authentication:** Uses JWT for secure and stateless authentication.
- **Role-Based Access Control (RBAC):** Assigns permissions based on roles.

## Workflow
1. User logs in with credentials.
2. System generates a JWT token.
3. Token is verified on subsequent requests.

## Security Measures
- **Encryption:** All tokens are encrypted.
- **Expiration:** Tokens have a limited lifespan to minimize misuse.
