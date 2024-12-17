# Leasing Market Survey Application Proposal

> [!NOTE]
> This proposal outlines the development of a web-based live market survey feature within the DataHub environment, based on the provided spreadsheet and your email content.

- **Prepared For**: **GMH Communities**
- **Prepared By**: **No Clocks, LLC**
- **Date**: **2024-11-21**

## Contents

- [Executive Summary](#executive-summary)
  - [Purpose](#purpose)
- [Objectives](#objectives)
- [Scope of Work](#scope-of-work)
  - [In-Scope](#in-scope)
  - [Out of Scope](#out-of-scope)
- [Deliverables](#deliverables)
- [Functional Requirements](#functional-requirements)
  - [Dashboard](#dashboard)
  - [Property Summary](#property-summary)
  - [Leasing Summary](#leasing-summary)
  - [Short-Term Leases](#short-term-leases)
  - [Amenities \& Utilities](#amenities--utilities)
  - [Rents by Floorplan](#rents-by-floorplan)
  - [Average Rent by Unit Type](#average-rent-by-unit-type)
  - [Notes \& Office Hours](#notes--office-hours)
  - [Competitor Analysis](#competitor-analysis)
  - [Reports and Analytics](#reports-and-analytics)
- [Non-Functional Requirements](#non-functional-requirements)
- [Timeline \& Status](#timeline--status)
- [Risks and Mitigations](#risks-and-mitigations)
- [Cost Estimate](#cost-estimate)
- [Outstanding Questions or Concerns](#outstanding-questions-or-concerns)
  - [Notes Regarding Types of Input](#notes-regarding-types-of-input)
- [Next Steps](#next-steps)
- [Appendix - References and Resources](#appendix---references-and-resources)

<br>

## Executive Summary

The **Leasing Market Survey Application Integration** aims to empower GMH Communities by transforming their market survey process into a streamlined, database-driven, web-based solution. This project will simplify weekly data entry tasks, enhance data accuracy, and provide powerful analytical insights to assist corporate staff and General Managers (GMs) in making informed decisions.

The application will integrate seamlessly into GMH’s DataHub, maintaining consistency with the existing ecosystem while introducing modern features like real-time validation, role-based access control (RBAC), and interactive visualizations.

### Purpose

The objective of this project is to integrate a **web-based, live market survey application** into GMH Communities’ existing *DataHub* environment. The solution will enable General Managers to log, analyze, and manage survey data weekly, while maintaining historical records for corporate staff and partners.

The Leasing Market Survey Application will streamline manual processes by replacing spreadsheets with an intuitive, database-driven, interactive web application. Advanced visualizations and seamless database integration will improve data access, reduce errors, and enhance decision-making.

The purpose can be broken down as follows:

1. **Digital Replication of Current Survey**: Create a web-based market survey that replicates the structure and data points in the attached spreadsheet.
2. **Weekly Data Entry**: Allow General Managers to input survey data for their properties and competitors.
3. **Historical Storage**: Preserve all data for historical analysis and reporting.
4. **Custom Market Surveys by Property**: Each property will have its own survey with competitor-specific tabs for streamlined data entry.
5. **Centralized Access**: Integrate the market survey feature within the existing DataHub for easy access alongside other custom leasing reports.

<br>

## Objectives

**Key Objectives**:

- **Digitization**: Digitally replicate the current survey structure and inputs.
- **Efficiency**: Simplify weekly data entry by allowing custom surveys per property, including competitor-specific tabs.
- **Centralized Access**: Integrate seamlessly with the DataHub for easy access.
- **Analytics**: Provide advanced visualization capabilities for trend analysis and competitor benchmarking.

**Primary Goals**:

- Provide an intuitive and elegant web application to manage leasing surveys.
- Centralize data storage for better collaboration and version control.
- Integrate advanced visualizations to analyze trends and competitor performance.

**Secondary Goals**:

- Implement comprehensive validation to minimize data errors.
- Enable collaboration by providing role-based access and permissions.
- Track survey completion progress with real-time feedback

<br>

## Scope of Work

### In-Scope

1. **Core Application Development**:
  - Create modular components for different survey sections
  - Each module will correspond to a specific survey section:
    - Property Summary
    - Leasing Summary
    - Amenities & Utilities
    - Rents by Floorplan
    - Average Rent by Unit Type
    - Notes & Office Hours
    - Competitor Analysis
    - Reports and Analytics

2. **Backend Integration & Data Model**:
  - PostgreSQL Database schema tailored to GMH's property, survey, and competitor data.
  - Pre-population of input fields from the database for faster and more accurate survey completion.

3. **Enhance User Experience**:
  - Develop a modern, responsive UI with a consistent look and feel.
  - Provide spreadsheet-like table inputs and dynamic dropdowns for better user experience (UX).
  - Implement real-time validation for input fields.
  - Provide interactive visualizations for interactive data and trend analysis.
  - Develop charts and competitor benchmarking visualizations.

4. **Validation & Feedback**:
  - Add field-level validation to prevent erroneous or incomplete data entry submissions.
  - Deliver instant feedback via notifications for successful submissions or errors.

5. **Role Based Access Control**:
  - Allow GMs to view and edit their property data only.
  - Enable corporate staff to review and analyze submissions across all properties.


### Out of Scope

-   Real-time integration with external APIs (e.g., Entrata) beyond existing data export workflows.
- Complex competitor data enrichment (e.g., automated external scrapers).
-   Features not explicitly listed in the requirements.

<br>

## Deliverables

**Market Survey Application**: A responsive, web-based tool integrated with the existing **DataHub**.

**Backend Integration**: A connected database supporting real-time data retrieval and updates.

**Analytics Dashboard**: Interactive charts and metrics for tracking trends and competitor insights.

**Documentation**:

-   User guide for GMs and corporate staff.
-   Technical documentation for system administrators.
-   Data Model documentation for database schema.

## Functional Requirements

The Leasing Market Survey Application will consist of the following functional components:

-   **Dashboard & Navigation**:
    -   Value boxes for metrics (e.g., # of properties, competitors, responses).
    -   Progress bar to indicate survey completion.
-   **Core Survey Sections**:
    -   **Property Summary**: Editable fields for name, address, phone, developer, ratings, etc.
    -   **Leasing Summary**: Editable metrics for occupancy, pre-leasing, and incentives.
    -   **Amenities & Utilities**: Editable tables for property features and utility costs.
    -   **Rents by Floorplan**: Interactive tables for rent, concessions, and additional expenses.
    -   **Average Rent by Unit Type**: Visualizations and tables summarizing rent averages.
-   **Competitor Analysis**:
    -   Comparisons of occupancy, pre-leasing, and rent trends.
    -   Exportable competitor benchmarking reports.
-   **Reports and Advanced Visualizations**:
    -   Line charts for trends, bar charts for comparisons, and heatmaps/radar charts for competitor insights.
-   **Backend Integration**:
    -   PostgreSQL database schema for property, survey, and competitor data.
    -   Dynamic pre-population of inputs from the database.
-   **Validation & Feedback**:
    -   Real-time validation for required fields, date ranges, and mismatches.
    -   Notifications for errors or successful submissions.

<br>

### Dashboard

- **Key Metrics**:
  - Total Properties
  - Total Competitors
  - Total Survey Responses
- **Progress Tracker**: A percentage bar displaying survey completion status.

Demo:

![Imgur](https://i.imgur.com/QaWzyLv.png)

### Property Summary

Fields:

-   Property Name (text input, pre-populated)
-   Website (text input, pre-populated)
-   Address (text input, pre-populated)
-   Phone Number (text input, pre-populated)
-   Developer (text input, pre-populated)
-   Manager (text input, pre-populated)
-   Owner (text input, pre-populated)
-   Property Type (dropdown: Student, Conventional, Affordable, Innovative)
-   Property Rating (slider: 1-5 stars)
-   Property Status (dropdown: "New Construction", "Operational", "Undergoing Renovation")
-   Comp Status (dropdown: "Subject Property", "Tier 1", "Tier 2")
-   Year Built (numeric input)
-   Most Recent Sale (date input: month/year)
-   Distance From Campus (slider: 0-10 miles, increments of 0.1)

Notes:

-   Pre-populated values from the backend database.
-   Save changes with a single action button.

Demo:

![image-20241121130607246](https://i.imgur.com/zoSKAFw.png)

<br>

### Leasing Summary

Fields:

-   Reporting Cycle (dropdown: "Saturday-Friday" or "Sunday-Saturday")
-   Lease Launch Date (date input)
-   Renewal Launch Date (date input)
-   Current Occupancy (%) (numeric input)
-   Last Year Occupancy (%) (numeric input)
-   Current Pre-Lease (%) (numeric input)
-   Last Year Pre-Lease (%) (numeric input)
-   Total Renewals (numeric input)
-   Total New Leases (numeric input)
-   Weekly Traffic (numeric input)
-   Current Incentive (dropdown: None, Gift Card, Monthly Concession, One-Time Concession)
-   Incentive Amount (numeric input)
-   Data Last Updated (date input)

Notes:

-   Pre-populated values from the backend database.
-   Validation for date ranges and numeric inputs.
-   Save changes with a single action button.

Demo:

![image-20241121130736516](https://i.imgur.com/5KkFwJT.png)

<br>

### Short-Term Leases

Fields:

-   5-Month Term Available (Yes/No toggle)
-   5-Month Term Premium (numeric input)
-   5-Month Term Quantity (numeric input)
-   10-Month Term Available (Yes/No toggle)
-   10-Month Term Premium (numeric input)
-   10-Month Term Quantity (numeric input)

### Amenities & Utilities

Editable tables for amenities (e.g., Fitness Center, Pool) and utilities (e.g., Electricity, Gas).

Fields:

- **Amenities Editable Table**:
    - Amenity Name (i.e. Fitness Center, Pool, Game Room)
    - Available (Yes/No Toggle)

Notes:

- These tables will act similar to excel spreadsheets, allowing for easy editing and adding of amenities.

### Rents by Floorplan

Interactive table(s) for floorplan data including:

Floorplan Details:

- Floorplan (labeled as "description" in excel): S1, S2, ..., S11-Affordable, etc.
- Floorplan Type (Studio)
- Count (Rents)
- SF/Bed (?)
- Number of Beds
- Number of Baths
- Available (Yes/No)

Market Rent:

- Market Rent per Bed
- Market Rent per SF

Concessions:
- Gift Card
- One-Time
- Monthly

Effective Rent:
- Per Bed
- Per SF

Additional Expenses:
- Furniture
- TV
- Electric/Gas
- Water
- Cable & Internet
- Trash & Valet
- Parking

Bundled Rent:
- Per Bed
- Per SF

Notes:
- Table structure (floorplan rows) pre-defined/populated via property data
- Editable fields:
  - Floorplan: Available
  - Market Rent: Per Bed
  - Concessions: Gift Card, One-Time, Monthly
- Calculated:
  - Effective Rent:
    - Per Bed: `{ (Market Rent Per Bed - Gift Card Concessions / 12) - (One-Time Concessions / 12) - (Monthly Concessions) }`
    - Per SF: `{ Per Bed Effective Rent / (SF/Bed) }`
  - Additional Monthly Expenses
  - Bundled Rent

- Validation to prevent negatives
- *Certain Calculations Depend on fields outside the scope of just the amenities and utilities - will cause some tight coupling issues between modules.*

<br>

### Average Rent by Unit Type

> [!NOTE]
> *Assumes a 12-month lease term*

- Table with fields mirroring the above floorplan table
- Bar chart displaying average rent across unit types

### Notes & Office Hours

-   Editable text areas for notes.
-   Editable table for office hours (e.g., open/close times).

### Competitor Analysis

-   Compare properties using metrics like occupancy, pre-leasing, and rent trends.

### Reports and Analytics

-   Exportable summaries for decision-makers.
-   Interactive visualizations for trends and comparisons.

<br>

## Non-Functional Requirements

1.  **Usability**:
    -   Responsive design for desktop and mobile.
    -   Easy-to-navigate layout using **bslib** for a modern aesthetic.
2.  **Performance**:
    -   Application should load within 3 seconds for standard operations.
    -   Support up to 10 concurrent users without performance degradation.
3.  **Data Security**:
    -   Use secure authentication and role-based access control.
    -   Encrypt sensitive data in transit and at rest.
4.  **Scalability**:
    -   Database structure should accommodate additional properties or metrics.

## Timeline & Status

Estimated Timeline:

| Milestone | Estimated Date | Status |
| :---------:  | :----------------: | :-----: |
| Requirements Gathering and Approval | Week 1 | In Progress (this document) |
| UI/UX Prototypes | Week 1 | In Progress |
| Backend Database Model | Week 1 | In Progress |
| Module Development (Core) | Week 1-2 | In Progress |
| Deployment & Testing | Week 2-3 | Not Started |

## Risks and Mitigations

| **Risk**                    | **Mitigation Strategy**                               |
| --------------------------- | ----------------------------------------------------- |
| Database integration issues | Test database connectivity early in the project.      |
| Validation errors in inputs | Use real-time feedback for missing/invalid fields.    |
| User adoption challenges    | Provide documentation and optional training sessions. |
| Timeline pressure           | Use modular development for incremental delivery.     |

<br>

## Cost Estimate

| **Component**                    | **Cost** |
| -------------------------------- | -------- |
| Core Application Development     | $3,500   |
| Database Schema Integration      | $1,500   |
| Advanced Visualizations & Tables | $1,000   |

**Optional Add-Ons**:

-   Real-time Competitor Tracking Module
-   Advanced Reporting and Import/Export Functionality

## Outstanding Questions or Concerns

The following areas need further clarification or data from client:

- Property and Competitor Data:
  - Currently we only have the single spreadsheet for property: `1047 Commonwealth` and its associated competitors. Can we be provided with additional data for other properties and their competitors?
  - How should the relationship between properties and competitors be included in the frontend interface? Should managers be able to add, edit, or remove competitors related to their property?

- Authentication and Role-Based Access Control (RBAC) Authorization:
  - How should user roles be defined?
  - How to handle Admin Entries vs. Regular User Entries?
  - How to handle domain-wide registration and access?

-   Dashboard Charting:
    -   Rate Adjustments: Prior Six Weeks
    -   Market Velocity and Rates: Prior Six Weeks
-   Survey Submission Logs Table
-   Historical Market Rent Data
-   SWOT Analysis Feature

<br>

### Notes Regarding Types of Input

-   Client should understand the different mechanisms for input fields in the survey
    -   Input “Widgets”(i.e. form fields) vs.
    -   Spreadsheet-like table “inputs”

Example using forms input “widgets”:

![image-20241121135907123](https://i.imgur.com/PDcCmG8.png)

Example of a spreadsheet-like table input interface:

![image-20241121141455940](https://i.imgur.com/tWots9l.png)

<br>

## Next Steps

1.   Review Proposal: Confirm requirements and scope of work.
2.   Finalize Requirements
3.   Develop MVP Market Survey Core App/Module
4.   Separate and develop sub-modules for each section: Property Summary, Leasing Summary, etc.
5.   Add Competitor Pages and Integrate with Database
6.   Integrate with Authentication

## Appendix - References and Resources

- [Provided Spreadsheet](https://drive.google.com/file/d/1RLujEP5JvYZZUuu4hT1WOXiZNk-YEfcT/view?usp=drive_link)
- [DataHub Environment](https://datahub.gmhcommunities.com)
- [GMH Communities Website](https://gmhcommunities.com)
- [No Clocks, LLC Website](https://noclocks.dev)
- [Source Code Repository](https://github.com/noclocks/gmhdatahub)
- [Initial (WIP) Data Model Documentation](https://dbdocs.io/jimbrig2011/GMH-Data-Model) (password: `gmhcommunities`)

***

**Prepared By**: No Clocks, LLC

**Contact**: [team@noclocks.dev](mailto:team@noclocks.dev)

**Date**: 2024-11-21
