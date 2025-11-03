# Economic Regression Analysis of the U.S. Energy Sector
This project explores the **macroeconomic relationship between the U.S. energy sector and national economic growth**, using regression modeling to measure the elasticity of GDP with respect to production, generation, and pricing indicators.

## Project Overview

- **Period:** 2017-2024
- **Tools:** R, Excel (Power Query), BEA & IEA Datasets
- **Objective:** Assess how energy subsectors contribute to U.S. GDP through quantitative regression analysis.

The workflow included:
1. Compiling data from the **Bureau of Economic Analysis (BEA)** and **U.S. Energy Information Administration (EIA)** for GDP, GVA (Oil/Gas and Electric Power), Oil and Natural Gas Production, Renewable Generation, and Electricity Revenue per KWh.
2. Conducting the **ETL process in Excel** using Power Query to merge and clean the dayasets into a unified structure.
3. Building **six log-log regression models in R**, where GDP served as the response variable and each energy indicator as an explanatory variable.
4. Generating visual and statistical outputs (R², p-values, slopes) to interpret the degree of association between energy metrics and economic growth.

## Regression Results & Interpretation 

Each model represents the elasticity of GDP to a 1% change in the explanatory variable.

| Variable | Coefficient (β₁) | R² |
|-----------|------------------|----|
| GVA – Oil & Gas Extraction | 0.30 | 0.53 |
| GVA – Electric Power Generation | 0.94 | 0.95 |
| Oil Production (thousand barrels) | 1.11 | 0.68 |
| Natural Gas Production (million cubic feet) | 0.65 | 0.90 |
| Renewable Generation (MWh) | 0.61 | 0.95 |
| Revenue per kWh (cents) | 1.57 | 0.95 |

## Key Insights
- **Electric power, renewables, and natural gas** exhibit the highest correlations (R² > 0.90), confirming their growing role in GDP dynamics.
- **Oil and gas extraction** still contribute positively but less proportionally, reflecting diversification within the U.S. energy mix.
- The elasticity of **1.57 between electricity revenue and GDP** underscores how energy market pricing and infraestructure investment amplify national economic performance.

## Repository Contents

- `Regression.R` – R script with all regression models, plots, and correlation analysis.
- 	`Regression_.R` - Updated the R script by adding log tranformations to the variables.
- `Regression.xlsx` – Cleaned dataset combining GDP and energy sector indicators.  
- `Results` – Folder containing visualizations and output summaries.

## Future Scope

 - Redefine explanatory variable to evaluate the impact on the **adjusted R²** and improve model precision.
 - Increase data granularity from **annual to monthly periods** to expand the number of observations and enhace statistical robustness.
