# Portfolio Optimization with MATLAB

## Overview
This project optimizes a portfolio of 25 equities by calculating the **Maximum Sharpe Ratio Portfolio** and the **Maximum Return Portfolio**. The analysis is based on monthly returns, using data from an Excel file (`25eq2022.xlsx`).

## Files
- `25eq2022.xlsx` – Contains historical **adjusted prices** and **monthly returns**.
  - **Sheet: 'adj pr'** – Adjusted prices of stocks.
  - **Sheet: 'rtn'** – Precomputed monthly returns.

## Methodology
1. **Load data from Excel** – Extract stock symbols and monthly return data.
2. **Set up Portfolio Optimization** – Define constraints and risk-free rate.
3. **Optimize Portfolios**:
   - **Maximum Sharpe Ratio Portfolio** – Balances return and risk.
   - **Maximum Return Portfolio** – Seeks highest expected return.
