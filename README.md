
# BikeStore Sales & Order Analysis - Power BI Dashboard

##  Project Overview

This project presents a comprehensive business intelligence solution for BikeStore, a multi-location bicycle retailer. The analysis leverages Power BI to transform raw sales data into actionable insights through interactive dashboards, enabling data-driven decision making across sales performance, store operations, and customer behavior.

The solution encompasses the complete data pipeline - from database design and SQL queries to data modeling and visualization - providing a 360-degree view of business operations.

---

##  Project Structure

```
BikeStore-Analysis/
├── Power_BI/
│   ├── Professional Sales & Order Analysis.pbix      # Main Power BI file
│   ├── data modeling.png                             # Data model visualization
│   ├── page_1.png                                   # Sales Overview dashboard
│   ├── page_2.png                                   # Store Analysis dashboard
│   ├── page_3.png                                   # Customers & Order Analysis dashboard
├── data/
│   ├── brands.csv                                   # Product brand information
│   ├── categories.csv                               # Product categories
│   ├── customers.csv                                # Customer master data
│   ├── order_items.csv                              # Order line items
│   ├── orders.csv                                   # Order headers
│   ├── products.csv                                 # Product catalog
│   ├── staffs.csv                                   # Staff information
│   ├── stocks.csv                                   # Inventory data
│   ├── stores.csv                                   # Store locations
├── docs/
│   ├── Database Diagram.png                         # Entity Relationship Diagram
│   ├── Professional Sales.docx                      # Comprehensive analysis report
│   ├── Project Details_BikeStore_SQL.pdf           # Project requirements
│   ├── Report on Database Project.docx             # Database implementation report
├── icons/
│   ├── [Various visualization icons]                # Dashboard UI elements
├── sql_scripts/
│   ├── create_tables.sql                            # Database schema creation
│   ├── Import CSV data.sql                          # Data import scripts
│   ├── Explore Data.sql                             # Data exploration queries
│   ├── queries_solution.sql                         # Analytical queries
│   ├── database model.mwb                           # MySQL Workbench model
```

---

##  Workflow Process

### 1. Data Collection & Database Design
- Designed and implemented a relational database using MySQL
- Created tables for sales, production, customers, staff, and inventory modules
- Established proper relationships with primary and foreign keys
- Imported CSV data using MySQL Workbench Import Wizard

### 2. Data Modeling in Power BI
- Connected Power BI to the MySQL database
- Established relationships between fact and dimension tables
- Implemented a star schema for optimal performance
- Created calculated columns and measures for key metrics

### 3. Dashboard Development
Built three interconnected dashboard pages:

**Sales Overview** - High-level business performance and product analytics  
**Store Analysis** - Comparative performance across retail locations  
**Customer & Order Analysis** - Customer behavior and order patterns

---
##  Dashboard Screenshots  

###  Data Model
<img src="https://github.com/Hassan-DS507/Bike-Sales-Order-Analysis-Power-BI-/blob/main/Power%20bi/data%20modeling.png" width="800"/>

###  Sales Overview Dashboard
<img src="https://github.com/Hassan-DS507/Bike-Sales-Order-Analysis-Power-BI-/blob/main/Power%20bi/page_!.png" width="800"/>

###  Store Analysis Dashboard  
<img src="https://github.com/Hassan-DS507/Bike-Sales-Order-Analysis-Power-BI-/blob/main/Power%20bi/page_2.png" width="800"/>

###  Customers & Order Analysis Dashboard
<img src="https://github.com/Hassan-DS507/Bike-Sales-Order-Analysis-Power-BI-/blob/main/Power%20bi/page_3.png" width="800"/>


---

##  Key Insights

### Sales Performance
- **Total Revenue**: $7.69M from 1,615 orders
- **Average Order Value**: $4,760
- **Customer Base**: 1,445 customers with high retention (orders ≈ customers)
- **Product Movement**: 4,722 products sold indicating strong demand

### Store Performance
- **Baldwin Bikes** dominates with 67.83% of total revenue
- **Seasonal Pattern**: Peak demand observed between March-May
- **Revenue Disparity**: Baldwin generates significantly higher revenue despite similar quantity sales, indicating higher-value product mix

### Product & Category Analysis
- **Top Product**: Trek Slash 8 27.5 - 2016 is the clear market leader
- **Brand Dominance**: Trek and Electra lead in sales volume and value
- **Popular Categories**: Cruisers Bicycles and Mountain Bicycles drive volume

### Customer Insights
- **VIP Customer**: Sharyn represents the high-value segment (~$40K)
- **High-Frequency Customer**: Aleta leads in order count (4+ orders)
- **Order Efficiency**: 89.47% of orders successfully completed (Status 4)

---

## Future Enhancements

### Advanced Analytics
- Implement predictive forecasting for seasonal demand
- Develop customer lifetime value (CLV) scoring
- Create inventory optimization models

### Technical Improvements
- Automated data refresh pipelines
- Power BI Service deployment for enterprise sharing
- Real-time dashboard updates
- Integration with additional data sources (web analytics, CRM)

### Business Applications
- Dynamic pricing strategy optimization
- Personalized marketing campaign automation
- Store performance benchmarking system
- Supply chain and inventory optimization

---

##  Author

**Hassan Abdul-razeq**  
Data Science & Analytics Enthusiast

*This project demonstrates end-to-end business intelligence capabilities from database design through interactive dashboard development, providing actionable insights for retail business optimization.*
```
