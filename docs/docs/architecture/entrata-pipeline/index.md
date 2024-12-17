# Entrata Data Pipeline Documentation

## Overview

The Entrata pipeline integrates with the Entrata API to collect, process, validate, and store real estate data for properties, leases, residents, and related entities. It is designed to streamline data ingestion, transformation, and storage into a PostgreSQL database, ensuring scalability and reliability.

## Key Features

- Collects data from the Entrata API for various endpoints.
- Validates API responses against predefined schemas.
- Processes nested and complex data structures into normalized tabular formats.
- Enriches data with additional metadata (e.g., geolocation).
- Stores processed data in a PostgreSQL database.

## Pipeline Architecture

The Entrata pipeline consists of the following components:

### Configuration

- **API Endpoints:** Defines the Entrata API endpoints to interact with.
- **Parameters:** Specifies the parameters required for API requests.
- **Schemas:** Defines the data schemas for validating API responses.
- **Database Connection:** Configures the connection to the PostgreSQL database.
- **Logging:** Sets up logging to track pipeline activities.
- **Error Handling:** Manages errors and exceptions during data processing.
- **Data Processing Steps:** Outlines the steps involved in processing Entrata data.

### Entrata API Client Initialization

- **Authentication:** Handles authentication with the Entrata API using `HTTP` basic authentication.
  - Leverage the `entrata_req_auth()` function to authenticate with the Entrata API.
- **Check Status**: Verifies the status of the Entrata API using the `/status` endpoint.
  - Use the `entrata_status()` function to check the API status.
- **Request Handling**: Implements robust `HTTP` request mechanism using the `httr2` package.
  - Utilize the `entrata_req_*` functions to interact with the Entrata API.
- **Endpoints**: Interacts with various Entrata API endpoints to fetch data.
  - Fetch property data using the `/properties` endpoint.
  - Retrieve report data using the `/reports` endpoint.
  - Get lease information using the `/leases` endpoint.
  - Fetch unit information using the `/propertyunits` endpoint.

### Data Parsing

- Each API response is parsed and validated against predefined schemas.
- Complex nested data structures are transformed into tabular formats.
- Data is enriched with additional metadata (e.g., geolocation, timestamps).
- Processed data is stored in a PostgreSQL database for reporting and analysis.
- Data integrity checks are performed to ensure consistency and accuracy.
- Error handling mechanisms are in place to manage data processing failures.
- Logging is used to track data processing activities and errors.

### Data Validation

- Validates the integrity and quality of the processed data.
- Schema validation ensures that the data conforms to the expected structure.
- Field validation checks for missing, invalid, or inconsistent data.

### Data Transformation

- **Normalization:** Converts complex nested data structures into flat tables.
- **Enrichment:** Adds additional metadata to the data (e.g., geolocation, timestamps).

### Data Storage

- **Database**: Stores processed data in a PostgreSQL database.
- **Tables**: Creates tables to store different types of data (e.g., properties, leases).

## High-Level Workflow

1. **Configuration & Initialization:** Set up the pipeline configuration & initialize the Entrata API client.
2. **Authentication & Status Check:** Authenticate with the Entrata API and verify the API status.
3. **Data Retrieval:** Fetch raw data from Entrata API.
4. **Data Parsing:** Parse the API response data into structure R data frames.
5. **Data Validation:** Validate the processed data against predefined schemas.
6. **Data Transformation:** Normalize and transform data into tabular formats.
7. **Data Enrichment:** Add additional metadata to the processed data.
8. **Data Storage:** Save processed data into the database for reporting.
