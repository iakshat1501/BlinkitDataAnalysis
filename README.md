# 🛒 Blinkit Sales Data Analysis With PowerBI Dashboard

This dataset originates from **Blinkit**, a prominent quick-commerce platform delivering groceries and essentials across various regions in India. The data spans a comprehensive period from 2023 to 2024, capturing crucial transactional, customer, and operational information. The objective of this analysis is to derive actionable business insights that can inform strategic decisions across sales, marketing, logistics, and customer engagement.

Key Insights and Recommendations Are Provided Across the Following Areas:  
- **Sales & Revenue Performance:**
In-depth evaluation of sales trends over time, including total revenue, average order value (AOV), customer lifetime value (CLTV), and high-performing regions and dates.  
- **Customer Behavior & Retention:**
Analysis of active vs. inactive customers, net retention rate, Net Promoter Score (NPS), customer segmentation (regular, premium, new), and trends in customer satisfaction based on ratings.  
- **Product-Level Insights:**
Identification of top-selling and underperforming products across categories to support inventory and marketing decisions.  
- **Operational Efficiency & Logistics:**
Assessment of delivery performance metrics such as average delivery time and late delivery rate to highlight areas of logistical improvement.  
- **Marketing Campaign Effectiveness:**
Review of campaign performance by analyzing conversion rates, impressions, clicks, and cost per acquisition (CPA), with a focus on identifying the most and least effective campaigns.

An interactive ***PowerBI dashboard*** can be download [here](https://drive.google.com/file/d/1MHKSoxSNbkOoYwMS053uttes9goZ7psO/view?usp=sharing)   
The ***Jupyter Notebook file*** for cleaning, organizing and preparing the data for SQL loading can be found [here](https://drive.google.com/file/d/1VxnTArp9m7hsPUFaAiBMTdaF9a_qIkdt/view?usp=sharing)  
Targated ***SQL querries*** regarding various business questions can be found [here](https://drive.google.com/drive/folders/1jtlUE40mTKMvJKxhlk52I5zN6TVQlxG6?usp=sharing)  

---
## 🎯 Data Structure and Initial Checks

The sales database as seen below consists of 8 tables with an average of 5000 entries in each table.  

![DataModel_BlinkitDataAnalysis](https://github.com/user-attachments/assets/7f6e754e-0fd2-4f77-9c59-65cb5b40678d)

Prior to beginning the analysis, quality control checks and dataset familiarization were conducted. The Python code used for data inspection and quality checks can be found [here](https://drive.google.com/drive/folders/1jtlUE40mTKMvJKxhlk52I5zN6TVQlxG6?usp=sharing)  

---

## ✅ Executive Summary:

### 📌 Overview and Findings
- The Blinkit Sales Data Analysis reveals a slight yet notable **1.46% increase in total revenue**, amounting to approximately **₹55.5 lakhs** across the span of 2023 to 2024. While the **Average Order Value (AOV)** dipped **from ₹1007 in 2023 to ₹983 in 2024**, the overall growth in sales highlights resilience in customer demand.
<img width="805" height="188" alt="image" src="https://github.com/user-attachments/assets/266b8689-0420-4c61-97c2-e7b85b496b60" />
<img width="346" height="174" alt="image" src="https://github.com/user-attachments/assets/ff1d8c68-48ef-4dd5-b54a-0e00efe05d7a" />

- The platform witnessed its **highest single-day sales on August 27 2024**, reaching **₹20,528**. Additionally, cities such as **Orai, Nandayal, Gandhinagar, Deoghar, and Ghaziabad** emerged as key contributors to total order volume, while **Raichur, Mangalore, Morena, and Srikakulam** showed the least engagement.
<img width="485" height="341" alt="image" src="https://github.com/user-attachments/assets/321b0db9-6146-4534-be7c-2b3e8d462515" />

Below is the overview page from the PowerBI dashboard and more examples are included throughout the report. The entire interactive dashboard can be downloaded [here](https://drive.google.com/file/d/1MHKSoxSNbkOoYwMS053uttes9goZ7psO/view?usp=drive_link)

![Dashboard Preview](https://github.com/user-attachments/assets/feb8596e-060c-4356-8375-b8d28aed10c6)

### 📈 Sales Trends
- Year-over-year revenue shows marginal but **positive growth (1.46%)**, despite fluctuations in AOV.  
<img width="732" height="358" alt="image" src="https://github.com/user-attachments/assets/1ee48db2-81b8-468c-adf8-6161360c8d35" />
 
- The **Customer Lifetime Value (CLTV) is estimated at ₹8000**, indicating substantial **repeat business and engagement**.  
<img width="963" height="348" alt="image" src="https://github.com/user-attachments/assets/725a040d-2756-4cdc-8f27-9b1e1cbab63b" />
  
- Daily sales **peaked in late Q3 of 2024**, with distinct **upward spikes in specific regional markets**.  
<img width="325" height="346" alt="image" src="https://github.com/user-attachments/assets/f2812fc4-884e-40f7-b6cc-ac9ad9e22d74" />

### 👥 Customer Insights
- Average customer **rating improved slightly from 3.3 to 3.4**, signaling **modest gains in customer satisfaction**.
<img width="293" height="172" alt="image" src="https://github.com/user-attachments/assets/a4ba2fab-53e7-49ca-95d4-02a8b21859fd" />

- **Active customers grew from 1245 in 2023 to 1260 in 2024**, suggesting sustained platform usage.
<img width="345" height="170" alt="image" src="https://github.com/user-attachments/assets/ca9479bf-19ff-4891-9542-81c5a7b0e5ef" />

- **Customer retention rate stands at ~60%**, with **20.59% of users becoming inactive**, but **balanced by 8.64% new user acquisition**.
<img width="349" height="145" alt="image" src="https://github.com/user-attachments/assets/4830b0ad-2f9c-4850-90df-c645c083a0fb" />

- **Growth in regular and premium customer** segments **by 23.43% and 8.22%** respectively reinforces **user loyalty and engagement**.
<img width="847" height="340" alt="image" src="https://github.com/user-attachments/assets/696869da-b9df-4a99-9cbc-630b9179cd53" />

- The **Net Promoter Score (NPS) is recorded at 29%**, a **moderate indication of customer advocacy**.
<img width="309" height="185" alt="image" src="https://github.com/user-attachments/assets/19ae68b3-cd6d-466d-b9f5-403710c155dd" />

### 🧺 Product Performance
- Top-selling product categories include **Pet Treats, Toilet Cleaners, Dish Soaps, and Vitamins, consistently driving revenue**.
- On the other hand, **Cereals, Rice, Spinach, and Instant Noodles saw lower performance**, contributing minimally to total sales.
<img width="718" height="601" alt="image" src="https://github.com/user-attachments/assets/e7d10505-45e5-470b-b863-f0abb18dcfa3" />

### 🚚 Delivery & Logistics Insights
- **Average delivery time increased** by **4–5 minutes** in **2024** compared to **2023**, impacting delivery efficiency.
<img width="326" height="161" alt="image" src="https://github.com/user-attachments/assets/5ecb76d3-1df2-46ec-9ed6-f030a397471d" />

- **Late delivery percentage rose by 2%**, highlighting a need for logistical improvements, particularly in slower regions.
<img width="371" height="208" alt="image" src="https://github.com/user-attachments/assets/72690ca5-9568-4265-94d4-c43fa1f25fcc" />

### 📣 Marketing Campaign Performance
- The Membership Drive (**Campaign ID: 791173**) had the **highest conversion rate**, targeting new users **with 1009 impressions** and **634 clicks**.
<img width="377" height="345" alt="image" src="https://github.com/user-attachments/assets/0a91cc47-fd56-42b6-8d2f-3c8692dcaf69" />

- **Campaign ID 39018** had the **highest Cost Per Acquisition (CPA) at ₹478.5**, while **Campaign ID 547115** achieved the **lowest CPA at ₹115**, suggesting better ROI for the latter.
<img width="405" height="317" alt="image" src="https://github.com/user-attachments/assets/3716e859-2c74-466f-bebc-e1da1e315fe1" />

---

## 🧠 Insights Uncovered And Key Recommendations
Based on the insights uncovered, the following recommendations are provided:  
1. ***Revenue Growth Opportunities Through Seasonal Promotions:***  
Sales peaked on **August 27 2024**, indicating a seasonal demand surge. Blinkit should introduce **limited-time combo offers or flash sales** in late Q3 to capitalize on consumer behavior patterns. Replicating August's peak sales monthly could unlock an additional **₹1.5–2 lakhs in annual revenue.**
2. ***Strengthen High-Performing Markets & Optimize Low-Performers:***  
Top cities like **Orai, Nandyal, Ghaziabad, Deoghar, and Gandhinagar** showed consistent order volumes. Invest in **hyperlocal marketing, faster delivery, and stock prioritization** in these areas.
In contrast, underperforming cities like **Raichur, Morena, and Srikakulam** should be targeted with **first-order discount campaigns** or evaluated for potential exit if ROI stays low. Optimizing logistics and ad spend could save **₹40K–₹60K annually.**
3. ***Improve Delivery Experience to Retain Customers:***  
With **average delivery time increasing by 4–5 minutes and late deliveries up by 2%**, customer satisfaction and repeat orders may be at risk. Focus on **route optimization, regional fulfillment centers**, and **AI-based demand prediction.** A 10% reduction in delivery delays can improve CLTV and potentially retain **₹80K–₹1 lakh in repeat revenue** annually.
4. ***Focus Ad Spend on High-ROI Campaigns:***  
**Campaign ID 547115** achieved the **lowest CPA (₹115)**, while others like **Campaign ID 39018** were costlier. Future campaigns **should prioritize high-conversion, low-CPA formats.**
Reallocating just **20% of the total campaign budget** to top-performing ads could increase conversions **by 15–20%**, potentially yielding an extra **₹1 lakh in net revenue.**
5. ***Customer Segmentation & Loyalty Strategy:***  
With a retention rate of **~60%, 8.64% new customer growth**, and an average **CLTV of ₹8000**, Blinkit should launch **tier-based loyalty programs** and **exclusive deals for returning customers.**
Reactivating **just 10% of inactive users (20.59%)** could recover **~₹1.5–2 lakhs in lost revenue** over the next 2 quarters.
6. ***Prioritize High-Margin Products; Optimize Inventory:***  
Top-selling items include **Toilet Cleaners, Dish Soaps, Pet Treats, and Vitamins.** These should be bundled or highlighted in app-based promotions.
Low-performing items such as **Cereals, Spinach, and Instant Noodles** can be phased out or bundled for clearance. This could save **~₹25K–₹40K annually** in storage, procurement, and wastage.

---

## 🛠️ Tools & Skills Used

- **Power BI (Desktop & Service)** – for designing visually rich, interactive dashboards to present insights on sales, customer retention, and delivery performance.
- **DAX (Data Analysis Expressions)** – used for creating calculated columns, KPIs, and measures such as YoY growth, average delivery time, and customer lifetime value.
- **Microsoft Excel / CSV** – used as the initial data format for loading, filtering, and validating intermediate results during preprocessing.
- **SQL (MySQL Workbench)** – for writing analytical queries to support insights like revenue trends, product performance, and customer segmentation before visualizing them in Power BI.
- **Data Modeling in Power BI** – built relationships across order, product, and customer tables to ensure accurate and scalable reporting.
- **Custom Tooltips & Drillthroughs in Power BI** – added for enhanced interactivity, enabling detailed view exploration across product categories and delivery metrics.

---

## 🚀 Author
**Akshat Garg**  
[LinkedIn](https://www.linkedin.com/in/akshat-garg15012003/)

