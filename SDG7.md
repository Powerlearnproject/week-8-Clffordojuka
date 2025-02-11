## SDG Selection and Problem Definition

## SDG Selection: SDG 7 - Affordable and Clean Energy

SDG 7 aims to ensure access to **affordable**, **reliable**, **sustainable**, and **modern energy for all**. Despite progress in some regions, significant challenges remain, particularly in **Sub-Saharan Africa**, where many communities still lack access to electricity and clean cooking fuels. A specific problem within this SDG is the **lack of access to clean cooking technologies**, which not only affects **health** but also contributes to **environmental degradation.**

## Database Design
## Entity-Relationship Diagram (ERD)

To address the problem of access to clean cooking technologies, the following entities are included in the ERD:
- **Users:** Information about households or individuals.
- **Cooking Technologies:** Types of cooking technologies available (e.g., solar cookers, biogas stoves).
- **Access Records:** Data on whether users have access to clean cooking technologies.
- **Health Impact Data:** Information on health outcomes related to traditional cooking methods.

## ERD is Inside the mermaid markdown
---

## SQL PROGRAMMING QUESTION 

## 1. What is the distribution of cooking technology access among users?
**Analysis Goal:** Understand how many users have access to each type of cooking technology (e.g., solar cookers, biogas stoves, electric stoves).

## 2. What are the common health issues reported by users, and how do they relate to their cooking technology?
**Analysis Goal:** Identify the most prevalent health issues among users and determine if there's a correlation between these issues and the type of cooking technology used.

## 3. How does income level affect access to clean cooking technologies?
**Analysis Goal:** Analyze whether users from different income levels have varying access to clean or renewable cooking technologies.

## 4. What is the relationship between access to clean cooking technologies and reported health severity levels?
**Analysis Goal:** Examine if users with access to specific technologies report lower severity levels of health issues compared to those using traditional methods.

## 5. What trends can be observed over time regarding access to technologies?
**Analysis Goal:** Analyze how access to different cooking technologies has changed over time based on the AccessDate.


## INTERGRATION AND TESTING

This document provides a step-by-step guide on how to integrate and analyze data from SQL Server using Microsoft Excel. The process involves importing data, performing analysis with pivot tables and charts, and creating an interactive dashboard for better visualization and insights.

## Step 1: Import Data into Excel

### Open Excel and Navigate to the Data Tab
1. **Launch Excel:** Open a new workbook in Microsoft Excel.
2. **Go to the Data Tab:** Click on the **Data** tab located in the ribbon at the top of the window.

### Connect to SQL Server
1. **Access the Data Source:**
   - Click on **Get Data** > **From Other Sources** > **From ODBC**.
2. **Select Server and Database:**
   - Choose the appropriate server name and database from the Data Source Name (DSN) list.
3. **Confirm Selection:**
   - Click **OK** to proceed to the navigator window.
4. **Choose Relevant Tables:**
   - Select the required tables, such as:
     - `Users`
     - `CookingTechnologies`
     - `AccessRecords`
     - `HealthImpactData`
5. **Load Data:**
   - Click **Load** to import the selected tables into Excel as a table or directly into the data model for further analysis.

## Step 2: Create an Interactive Dashboard

### Design the Dashboard Layout
1. **Create a New Worksheet:**
   - Insert a new worksheet specifically for the dashboard.
2. **Arrange Space for Charts and Key Metrics:**
   - Define sections for essential insights, such as:
     - Total users
     - Distribution of cooking technologies
     - Health impact statistics
     - Trends in technology adoption

### Add Slicers for Interactivity
1. **Insert Slicers:**
   - Click on a PivotTable and navigate to **PivotTable Analyze** > **Insert Slicer**.
2. **Choose Filtering Fields:**
   - Select relevant fields such as:
     - `HealthIssue`
     - `TechnologyName`
     - `IncomeLevel`
3. **Enhance Data Filtering:**
   - Arrange slicers properly for a user-friendly interactive experience.

### Link Charts and Slicers
1. **Ensure Connection Across PivotTables:**
   - Select each slicer and connect it to all related PivotTables to enable synchronized filtering.
2. **Enhance Dashboard Visualization:**
   - Format charts for readability and ensure seamless updates when using slicers.

### Finalize the Dashboard
1. **Add Titles and Labels:**
   - Ensure all charts and key figures are clearly labeled.
2. **Format for Better Presentation:**
   - Adjust colors, align elements, and optimize the layout for professional and insightful reporting.
3. **Test Interactivity:**
   - Verify that slicers and charts update dynamically when different filters are applied.


**[EXCEL WORKBOOK LINK](https://1drv.ms/x/c/ded3ec2182ab4278/EeWITuYpc21CoooCLAdNR1cBGaupwfD7fJLUzScCbqywPw?e=R5grwy)**

**[CANVA LINK](https://www.canva.com/design/DAGexnsmJP0/Uz1U2E-qvHzwLTNu98UqBg/edit?utm_content=DAGexnsmJP0&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)**
