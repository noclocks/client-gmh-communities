# GMH Leasing Data Model Documentation

## Table of Contents

## Overview

The GMH Leasing Data Model organizes and manages data for real estate properties, leasing agreements, residents, and related entities. This document provides a comprehensive guide to the schema, including its tables, relationships, and key features.

Key Features:

- **Portfolios and Properties**: Properties are grouped into portfolios representing investment groups or ownership entities.
- **Leasing and Residents**: Manage leases, renewals, and resident demographics.
- **Financial Data**: Handle pricing tiers, charge codes, and lease charges.
- **Logging & Auditing**: Track changes to data and maintain a history of transactions.
- **Reporting & Analytics**: Generate reports on leasing activity, financial performance, and resident demographics.
- **Authentication**: Secure access to data with user roles and permissions.

## Schemas Overview

The GMH Leasing Data Model consists of the following schemas:

- `auth`: Authentication and Authorization data.
- `gmh`: Core data model for leasing, properties, residents, and financials.
- `entrata`: Integration with Entrata property management software.
- `mkt`: Market survey data
- `logs`: Logging and auditing data.
- `reports`: Reporting and analytics data.

## Tables Overview

The GMH Leasing Data Model includes the following tables:

| Schema | Table Name | Description |
| :---: | :---: | :---: |
| `gmh` | `portfolios` | Investment portfolios and ownership entities. |
| `gmh` | `portfolio_assignments` | Assignments of properties to portfolios. |
| `gmh` | `investment_partners` | Investment partners mapped to portfolios & properties. |
| `gmh` | `properties` | Real estate properties. |
| `gmh` | `property_locations` | Property locations and addresses. |
| `gmh` | `property_profiles` | Property "profile" data (i.e. images, descriptions). |
| `gmh` | `excel_reports` | Custom excel reports. |






| `auth` | `users` | User accounts and authentication data. |
| `auth` | `roles` | User roles and permissions. |
