# Packages
library(forecast)
library(ggplot2)

# data
mdata = AirPassengers
head(mdata)

# ranges delimiting
tdata = window(x = mdata, end = c(1958,12))
fdata = window(x = mdata, start = c(1959,1))
 
# arima model
tmodel = Arima(y = tdata, order=c(0,1,1), include.constant = FALSE) #(p,d,q) sans drift
fmodel = forecast(object = tmodel, h = 24, level = c(80,95)) # h: nombre de pas, level: intervalle de confiance

autoplot(object = fmodel) +
  autolayer(object = fdata, color = "black", linetype = 2) +
  labs(y = "Air Passengers", x = "Year")
