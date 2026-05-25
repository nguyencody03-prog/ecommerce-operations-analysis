# ecommerce-operations-analysis
# eCommerce Operations Analysis
**Tools:** BigQuery SQL | Google Cloud
**Dataset:** TheLook eCommerce (Google Public Dataset)

## Overview
This project analyzes eCommerce operations data to identify 
revenue opportunities, return rate issues, and fulfillment 
inefficiencies across product categories, brands, and 
distribution centers.

## Business Questions Answered

### 1. Which product categories drive the most revenue?
**Finding:** Outerwear & Coats is the top revenue category, 
led by premium brands Carhartt, The North Face, and Arc'teryx 
— suggesting the customer base skews toward higher income or 
outdoor lifestyle shoppers.

### 2. Which categories have the highest return rates?
**Finding:** Clothing Sets had the highest return rate across 
all categories, likely driven by fit complexity when multiple 
pieces must size correctly together — a key area for potential 
attribute and sizing data improvement.

### 3. Which distribution centers have the slowest fulfillment?
**Finding:** Port Authority of New York/New Jersey had the 
longest average days to ship, consistent with real-world port 
logistics challenges including higher shipment volumes and 
customs processing delays.

## Queries
All SQL queries used in this analysis are included in the 
/queries folder.

## Skills Demonstrated
- Multi-table JOINs across large datasets
- Aggregation and grouping (SUM, COUNT, AVG)
- Conditional logic (CASE WHEN)
- Date difference calculations (DATE_DIFF)
- Business insight generation from raw data
