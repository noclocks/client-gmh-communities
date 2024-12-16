# Market Survey Data Retrieval Process

> [!NOTE]
> *For the Market Survey component of the GMH Communities DataHub project, the process of collecting initial,
> default input values to pre-populate the form widgets is described below.*

## Overview

The Market Survey Data Retrieval Process is responsible for collecting the initial, default input values to pre-populate the form widgets in the Market Survey component of the GMH Communities DataHub project. The process is triggered when the user navigates to the Market Survey page in the application.

## Process

1. **On App Initialization / Server Session Start**:
  - Connect to backend database using a pooled connection.
  - Retrieve the most recent survey response records.
  - Extract relevant fields that correspond to the individual shiny input widgets.
  - Store these values in a format that can be easily accessed within each module's server function (i.e. as `reactiveValues`).
2. **User Interface Initialization**:
  - Use the retrieved values as the default `value` arguments for all `update*Input` functions.
3. **Data Validation & Error Handling**:
  - Ensure that if no prior survey response data exists, the app either uses pre-defined default values or
    notifies the user accordingly.
  - Implement logging and user messaging if retrieval of data fails.

**Reactivity Considerations**:

- If the "last survey response" data can change while the user is inside the app (e.g., new data comes in), consider a mechanism to dynamically update
  or refresh input defaults or only set them once at initialization.

## Diagram

The below diagram illustrates the Market Survey Data Retrieval Process:

```mermaid
```
