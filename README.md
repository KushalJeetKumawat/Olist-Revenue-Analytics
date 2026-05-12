<h1 align="center">E-Commerce Revenue & Customer Analytics</h1>
<p align="center"><i>SQL-based analysis of the Olist dataset</i></p>

## Project Overview 

### Context
This project analyzes an e-commerce dataset to understand key drivers of business performance, focusing on customer behavior, revenue trends, and product performance. The objective is to identify how revenue is generated, evaluate customer purchasing patterns, and assess the contribution of products and customer segments to overall growth. The analysis is based on the Olist dataset, which includes information on customers, orders, payments, and products. Key deliverables include core business metrics (such as total revenue and average order value), time-based trend analysis, customer segmentation (including repeat vs one-time customers), product performance insights, and advanced analysis such as revenue concentration, growth trends, and ranking of high performing entities.

This analysis focuses on four key areas:
<p>
  <img src="https://img.shields.io/badge/Core-Metrics-e3f2fd?style=flat&labelColor=ff8c00&color=ffc107"/>
  <img src="https://img.shields.io/badge/Time-Analysis-e3f2fd?style=flat&labelColor=ff7043&color=ffc107"/> 
  <img src="https://img.shields.io/badge/Customer-Analysis-e3f2fd?style=flat&labelColor=ffc107&color=ff8c00"/> 
  <img src="https://img.shields.io/badge/Product-Performance-e3f2fd?style=flat&labelColor=ffc107&color=ff7043"/>
</p>

- **Core Metrics**: Evaluation of overall business performance including total revenue, orders, and average order value
- **Time Analysis**: Analysis of revenue and order patterns over time to assess growth behavior
- **Customer Analysis**: Examination of customer purchasing behavior, including repeat vs one-time customers
- **Product Performance**: Identification of top performing products and categories based on revenue and demand

### Dataset Description
The analysis is based on the Olist e-commerce dataset, which contains transactional and customer-level data. Key tables used in this project include:

<table>
  <tr>
    <th>Table</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>customers</td>
    <td>Customer identifiers and location data</td>
  </tr>
  <tr>
    <td>orders</td>
    <td>Order details and purchase timestamps</td>
  </tr>
  <tr>
    <td>order_payments</td>
    <td>Payment values and transaction information</td>    
  </tr>
  <tr>  
  <td>order_items</td>
  <td>Product-level order details including price</td>
  </tr>
  <tr>
    <td>products</td>
    <td>Product categories and attributes</td>
  </tr>
</table>

---

## Analysis & Findings

### Insights

<table>
  <tr>
    <th>Finding</th>
    <th>Value</th>
    <th>Interpretation</th>
  </tr>
  <tr>
    <td colspan="3"><b>Customer Dynamics</b></td>
  </tr>
<tr>
  <td>Customer Conversion Rate</td>
  <td>53.7%</td>
  <td>Nearly half of users do not place orders, indicating a significant drop-off from acquisition to purchase</td>
</tr>
  <tr>
  <td>One-time Customers</td>
  <td>98.3%</td>
  <td>Almost all customers purchase only once, highlighting extremely weak retention</td>
</tr>
  <tr>
  <td>Repeat Customers</td>
  <td>1.7%</td>
  <td>Very small loyal customer base, limiting long-term revenue stability</td>
</tr>
  <tr>
    <td colspan="3"><b>Revenue & Growth Behavior</b></td>
  </tr>
<tr>
  <td>Total Revenue</td>
  <td>16.0M</td>
  <td>Indicates strong transaction volume and overall business scale</td>
</tr>
  <tr>
  <td>Top 20% Customer Contribution</td>
  <td>26.7%</td>
  <td>Revenue is moderately distributed with no extreme dependency on a small segment</td>
</tr>
  <tr>
  <td>Peak Revenue Period</td>
  <td>Nov 2017 (~630K)</td>
  <td>Spike suggests seasonal demand or promotional activity</td>
</tr>
<tr>
  <td>Growth Pattern</td>
  <td>Highly Fluctuating</td>
  <td>Revenue shows inconsistent growth with sharp rises and declines</td>
</tr>
<tr>
    <td colspan="3"><b>Product Performance</b></td>
  </tr>
<tr>
  <td>Total Product Revenue</td>
  <td>13.59M</td>
  <td>Represents total value generated from product sales</td>
</tr>
  <tr>
  <td>Top 10 Product Contribution</td>
  <td>~3.3%</td>
  <td>Revenue is widely distributed across products with no heavy reliance on a few items</td>
</tr>
  <tr>
  <td>Revenue Distribution</td>
  <td>Highly Diversified</td>
  <td>Product portfolio is balanced, reducing dependency risk</td>
</tr>
</table>

### Strategic Priorities

1. **Fix Retention First**
   - Launch lifecycle flows: post-purchase emails (Day 3, 7, 30)
   - Introduce incentives: loyalty points / repeat discounts
   - Personalize recommendations using past purchases

2. **Close the Conversion Gap (~46%)**
   - Optimize checkout (fewer steps, guest checkout)
   - Reduce friction: clear pricing, faster pages
   - Use remarketing (cart abandonment emails/ads)

3. **Stabilize Revenue Growth**
   - Identify peak drivers (campaigns/seasonality) and replicate
   - Build always-on campaigns (email, retargeting)
   - Track MoM KPIs to catch drops early

4. **Strengthen Product Strategy**
   - Identify top categories and increase visibility
   - Bundle products to increase AOV
   - Promote high-margin/high-demand SKUs

---

## Conclusion & Resources

### Scope for Improvement

- Extend analysis into cohort retention and customer lifetime value (CLV)
- Incorporate geographic and category level segmentation
- Build dashboards (Tableau/Power BI) for interactive insights

### Takeaway
This analysis highlights key challenges in customer retention, conversion, and growth stability, while also identifying opportunities to improve revenue through better customer lifecycle management and product strategy.

### Dataset Source 
<p>
  <a href="https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce"target="_blank">
   <img src="https://img.shields.io/badge/View_Dataset-Olist-7E57C2?style=social&labelColor=E3F2FD&color=EDE7F6"/>
  </a>
</p>

### Tools & Skills 
<p>
  <img src="https://img.shields.io/badge/SQL-Advanced-e3f2fd?style=flat&labelColor=ffc107&color=ff7043"/>
  <img src="https://img.shields.io/badge/MySQL-Database-e3f2fd?style=flat&labelColor=ff8c00&color=ffc107"/> 
  <img src="https://img.shields.io/badge/Data%20Analysis-Business%20Insights-e3f2fd?style=flat&labelColor=ff7043&color=ffc107"/> 
  <img src="https://img.shields.io/badge/Window%20Functions-Rank%20%7C%20LAG%20%7C%20NTILE-e3f2fd?style=flat&labelColor=ffc107&color=ff8c00"/>
  <img src="https://img.shields.io/badge/CTE-Query%20Structuring-e3f2fd?style=flat&labelColor=ffc107&color=ff7043"/>
</p>
