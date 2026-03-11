# ARIMA Example

## Description

This project demonstrates time series forecasting using ARIMA (AutoRegressive Integrated Moving Average) models in R. The example uses the classic AirPassengers dataset to illustrate how to fit an ARIMA model and generate forecasts with confidence intervals.

## Overview

The example implements the following workflow:

1. **Data Preparation**: Uses the built-in AirPassengers dataset
2. **Train-Test Split**: Divides data into training (1949-1958) and test (1959) periods
3. **Model Fitting**: Fits an ARIMA(0,1,1) model to the training data
4. **Forecasting**: Generates 24-month forecasts with 80% and 95% confidence intervals
5. **Visualization**: Plots the forecasts alongside actual test data

## Requirements

The following R packages are required:

- `forecast` - Tools for displaying and analyzing univariate time series forecasts
- `ggplot2` - Data visualization with the Grammar of Graphics

## Installation

Install the required packages using:

```r
install.packages("forecast")
install.packages("ggplot2")
```

## Usage

Run the script in R or RStudio:

```r
source("ARIMA-example.R")
```

## Results

The script produces:

- Summary statistics of the AirPassengers data
- ARIMA(0,1,1) model coefficients and diagnostics
- A visualization showing:
  - Historical training data
  - 24-month forecast with point estimates
  - 80% and 95% confidence intervals
  - Actual test data overlaid (shown as dashed black line)

## Details

- **Model**: ARIMA(0,1,1) without drift
  - p=0: No autoregression
  - d=1: First-order differencing
  - q=1: One moving average term
- **Forecast Horizon**: 24 months (h=24)
- **Confidence Levels**: 80% and 95%

## License

This is an example for educational purposes.
