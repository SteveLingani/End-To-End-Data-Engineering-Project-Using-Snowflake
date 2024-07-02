# End-To-End-Data-Engineering-Project-Using-Snowflake
Image/Snowflake Logo.png
## Overview

Welcome to my data engineering project repository, a comprehensive resource for cricket analytics. The project, built end-to-end, begins with ingesting data from JSON files, processes it through multiple layers, and culminates in a consumption layer for analytics. The results of these analytics can be conveniently visualized using a Snowsight dashboard. This repository serves as a one-stop solution for both the project’s code and its documentation. Enjoy exploring!

## Project Structure

## Getting Started

### Prerequisites

- Snowflake account (Free Trial Account sufficient)
- Snowflake client (SnowSQL or Snowflake web interface)
- Access to Snowsight for dashboard creation

### Setup

1 - Execute the SQL scripts in each layer (Land, RAW, Clean, Consumption) in the correct order to create tables, streams, tasks, and views.

2 - Load data into the Land Layer using tasks or other data loading methods.

3 - Run the tasks in the RAW Layer to move data from the Land Layer to the RAW Layer.

4- Run subsequent tasks for cleaning and transforming data in the Clean Layer.

5- Finally, execute the tasks in the Consumption Layer to create the final tables and views for analytics.

6- Use Snowsight to access the dashboard and visualize the cricket analytics.

## Folder Structure

Json Cricket files/: Contains our Json Files.
Sql Worksheet/: Contains the SQL scripts used in all layers.
dashboard/: Includes Screenshots and Sql Scripts related to the dashboard creation using Snowsight.
