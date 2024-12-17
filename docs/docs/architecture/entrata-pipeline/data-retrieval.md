# Data Retrieval

## API Endpoints

The pipeline interacts with the following Entrata API endpoints:

- **`/status` Endpoint:** Checks the status of the API.

- **`/properties` Endpoint:** Fetches property data using the following endpoint methods:
  - `getProperties`: Retrieves property information.
  - `getFloorPlans`: Retrieves floor plan information.

- **`/reports` Endpoint:** Fetches report data using the following endpoint methods:
  - `getReportList`: Enumerates available reports to retrieve.
  - `getReportInfo`: Retrieves report information.
  - `getReportData`: Retrieves the `queueId` needed to fetch report data.
  - `getDependentFilter`: Retrieves dependent filter information.

- **`/queue` Endpoint**: Fetches report data via the `queueId` from the `getReportData` method above.

- **`/leases` Endpoint:** Retrieves lease information

- **`/propertyunits` Endpoint:** Retrieves unit information

## Parameters



## Authentication


## Tools

- **`httr2`:** Used for making API requests.
- **`entrata_req_*`:** Custom R functions for API interaction.
