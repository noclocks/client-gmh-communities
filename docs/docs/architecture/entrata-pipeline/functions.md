# Entrata Functions

The Entrata pipeline provides the following functions for interacting with the Entrata API:

## Request Functions

| Function Name | Description |
|---------------|-------------|
| `entrata_request()` | Generic function for creating Entrata API-specific requests. |
| `entrata_req_auth()` | Authenticates with the Entrata API. |
| `entrata_req_id()` | Set the request ID for tracking requests. |
| `entrata_req_endpoint()` | Sets the request's endpoint for interacting with the Entrata API. |
| `entrata_req_method()` | Sets the Entrata endpoint method (e.g., `getProperties`, `getLeases`). |
| `entrata_req_body()` | Sets the request body for POST requests. |
| `entrata_req_user_agent()` | Sets the user agent for the request. |
| `entrata_req_headers()` | Sets custom headers for the request. |
| `entrata_req_pagination()` | Sets pagination parameters for the request. |
| `entrata_req_retry()` | Sets the retry mechanism for failed requests. |
| `entrata_req_timeout()` | Sets the request timeout. |
| `entrata_req_log()` | Enables logging for requests. |
| `entrata_req_error()` | Handles errors and exceptions during requests. |
| `entrata_req_cache()` | Caches API responses for future requests. |
| `entrata_req_hash()` | Generates a hash for the request. |
| `entrata_req_perform()` | Executes the Entrata API request. |

## Specific Endpoint Functions

| Function Name | Description |
|---------------|-------------|
| `entrata_status()` | Checks the status of the Entrata API. |
| `entrata_properties()` | Fetches property data from the Entrata API. |
| `entrata_reports()` | Fetches report data from the Entrata API. |
| `entrata_leases()` | Retrieves lease information from the Entrata API. |
| `entrata_property_units()` | Retrieves unit information from the Entrata API. |

## Response Functions

| Function Name | Description |
|---------------|-------------|
| `entrata_response()` | Generic function for handling Entrata API responses. |
| `entrata_resp_body()` | Extracts the response body from the API response. |
| `entrata_resp_body_success()` | Default response body for successful API requests. |
| `entrata_resp_body_error()` | Default response body for failed API requests. |
| `entrata_resp_headers()` | Extracts the response headers from the API response. |
| `entrata_resp_status()` | Extracts the response status code from the API response. |
| `entrata_resp_error()` | Handles errors and exceptions in the API response. |
| `entrata_resp_log()` | Logs the API response for tracking and debugging. |
| `entrata_resp_cache()` | Caches the API response for future use. |
| `entrata_resp_hash()` | Generates a hash for the API response. |
| `entrata_resp_validate()` | Validates the API response against predefined schemas. |
| `entrata_resp_retry_after()` | Handles retry mechanisms for rate-limited requests. |

## Parsing Functions

| Function Name | Description |
|---------------|-------------|
| `parse_properties()` | Parses property data from the `/properties` `getProperties` API response. |
| `parse_floor_plans()` | Parses floor plan data from the `/properties` `getFloorPlans` API response. |
| `parse_reports()` | Parses report data from the `/reports` `getReportList` API response. |
| `parse_leases()` | Parses lease data from the `/leases` API response. |
| `parse_property_units()` | Parses unit data from the `/propertyunits` API response. |

## Validation Functions

| Function Name | Description |
|---------------|-------------|
| `entrata_req_validate()` | Validates the request parameters against predefined schemas. |
| `entrata_resp_validate()` | Validates the response data against predefined schemas. |

## Transformation Functions

| Function Name | Description |
|---------------|-------------|
| `transform_properties()` | Transforms property data into a tabular format. |
| `transform_floor_plans()` | Transforms floor plan data into a tabular format. |
| `transform_reports()` | Transforms report data into a tabular format. |

## Database Functions

| Function Name | Description |
|---------------|-------------|
| `db_connect()` | Connects to the PostgreSQL database. |
| `db_disconnect()` | Disconnects from the database. |
| `db_create_table()` | Creates a table in the database. |
| `db_insert_data()` | Inserts data into a table. |
| `db_query()` | Executes a SQL query on the database. |
