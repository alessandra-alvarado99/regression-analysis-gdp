library(readxl)
library(ggplot2)
library(dplyr)
library(scales)
library(GGally)

data<- read_excel("C:/Users/aless/Desktop/Regression.xlsx")

names(data)[names(data) == "Gross domestic product"] <- "GDP_Billions"
names(data)[names(data) == "Oil and gas extraction"] <- "GVA_OilGas_Billions"
names(data)[names(data) == "Electric power generation, transmission, and distribution"] <- "GVA_ElectricPower_Billions"
names(data)[names(data) == "U.S. Field Production of Crude Oil (Thousand Barrels)"] <- "OilProduction_ThousandBarrels"
names(data)[names(data) == "U.S. Natural Gas Plant Liquids Production (Million Cubic Feet)"] <- "NaturalGasProduction_MillionCubicFeet"
names(data)[names(data) == "total renewable production (thousand megawatt)"] <- "RenewableGeneration_MWh"
names(data)[names(data) == "Cents/kWh"] <- "RevenuePerKWh_Cents"

str(data)
head(data)

#MODEL 1: GDP vs GVA (Oil & Gas)

model_gva_oilgas<- lm(log(GDP_Billions)~log(GVA_OilGas_Billions), data= data )
summary(model_gva_oilgas)

plot(log(data$GVA_OilGas_Billions), log(data$GDP_Billions),
     main = "Log-Log Regression: GDP vs GVA (Oil & Gas)",
     xlab = "log[GVA - Oil & Gas (Billions USD)]",
     ylab = "log[GDP (Billions USD)]",
     pch= 19, col = "steelblue")

abline(model_gva_oilgas, col= "red", lwd = 2)

#MODEL 2: GDP vs GVA (Electric Power)

model_gva_elec<- lm(log(GDP_Billions)~log(GVA_ElectricPower_Billions), data= data )
summary(model_gva_elec)

plot(log(data$GVA_ElectricPower_Billions), log(data$GDP_Billions),
     main = "Log-Log Regression: GDP vs GVA (Electric Power Generation)",
     xlab = "log[GVA - Electric Power (Billions USD)]",
     ylab = "log[GDP (Billions USD)]",
     pch= 19, col = "steelblue")

abline(model_gva_elec, col= "red", lwd = 2)

#MODEL 3: GDP vs Oil Production

model_oil<- lm(log(GDP_Billions)~log(OilProduction_ThousandBarrels), data= data )
summary(model_oil)

plot(log(data$OilProduction_ThousandBarrels), log(data$GDP_Billions),
     main = "Log-Log Regression: GDP vs Oil Production",
     xlab = "log[Oil Production (Thousand Barrels)]",
     ylab = "log[GDP (Billions USD)]",
     pch= 19, col = "steelblue")

abline(model_oil, col= "red", lwd = 2)

#MODEL 4: GDP vs Natural Gas Production

model_gas<- lm(log(GDP_Billions)~log(NaturalGasProduction_MillionCubicFeet), data= data )
summary(model_gas)

plot(log(data$NaturalGasProduction_MillionCubicFeet), log(data$GDP_Billions),
     main = "Log-Log Regression: GDP vs Natural Gas Production",
     xlab = "log[Natural Gas Production (Million Cubic Feet)]",
     ylab = "log[GDP (Billions USD)]",
     pch= 19, col = "steelblue")

abline(model_gas, col= "red", lwd = 2)

#MODEL 5: GDP vs Renewable Generation

model_renew<- lm(log(GDP_Billions)~log(RenewableGeneration_MWh), data= data )
summary(model_renew)

plot(log(data$RenewableGeneration_MWh), log(data$GDP_Billions),
     main = "Log-Log Regression: GDP vs Renewable Energy Generation",
     xlab = "log[Renewable Energy Generation (MWh)]",
     ylab = "log[GDP (Billions USD)]",
     pch= 19, col = "steelblue")

abline(model_renew, col= "red", lwd = 2)

#MODEL 6: GDP vs Revenue per KWh

model_revenue<- lm(log(GDP_Billions)~log(RevenuePerKWh_Cents), data= data )
summary(model_revenue)

plot(log(data$RevenuePerKWh_Cents), log(data$GDP_Billions),
     main = "Log-Log Regression: GDP vs Revenue per KWh",
     xlab = "log[Revenue per KWh (Cents)]",
     ylab = "log[GDP (Billions USD)]",
     pch= 19, col = "steelblue")

abline(model_revenue, col= "red", lwd = 2)


