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

model_gva_oilgas<- lm(GDP_Billions~GVA_OilGas_Billions, data= data )
summary(model_gva_oilgas)

plot(data$GVA_OilGas_Billions, data$GDP_Billions,
     main = "GDP vs GVA (Oil & Gas)",
     xlab = "GVA - Oil & Gas (Billions USD)",
     ylab = "GDP (Billions USD)",
     pch= 19, col = "blue")

abline(model_gva_oilgas, col= "red", lwd = 2)

#MODEL 2: GDP vs GVA (Electric Power)

model_gva_elec<- lm(GDP_Billions~GVA_ElectricPower_Billions, data= data )
summary(model_gva_elec)

plot(data$GVA_ElectricPower_Billions, data$GDP_Billions,
     main = "GDP vs GVA (Electric Power Generation)",
     xlab = "GVA - Electric Power (Billions USD)",
     ylab = "GDP (Billions USD)",
     pch= 19, col = "blue")

abline(model_gva_elec, col= "red", lwd = 2)

#MODEL 3: GDP vs Oil Production

model_oil<- lm(GDP_Billions~OilProduction_ThousandBarrels, data= data )
summary(model_oil)

plot(data$OilProduction_ThousandBarrels, data$GDP_Billions,
     main = "GDP vs Oil Production",
     xlab = "Oil Production (Thousand Barrels)",
     ylab = "GDP (Billions USD)",
     pch= 19, col = "blue")

abline(model_oil, col= "red", lwd = 2)

#MODEL 4: GDP vs Natural Gas Production

model_gas<- lm(GDP_Billions~NaturalGasProduction_MillionCubicFeet, data= data )
summary(model_gas)

plot(data$NaturalGasProduction_MillionCubicFeet, data$GDP_Billions,
     main = "GDP vs Natural Gas Production",
     xlab = "Natural Gas Production (Million Cubic Feet)",
     ylab = "GDP (Billions USD)",
     pch= 19, col = "blue")

abline(model_gas, col= "red", lwd = 2)

#MODEL 5: GDP vs Renewable Generation

model_renew<- lm(GDP_Billions~RenewableGeneration_MWh, data= data )
summary(model_renew)

plot(data$RenewableGeneration_MWh, data$GDP_Billions,
     main = "GDP vs Renewable Energy Generation",
     xlab = "Renewable Energy Generation (MWh)",
     ylab = "GDP (Billions USD)",
     pch= 19, col = "blue")

abline(model_renew, col= "red", lwd = 2)

#MODEL 6: GDP vs Revenue per KWh

model_revenue<- lm(GDP_Billions~RevenuePerKWh_Cents, data= data )
summary(model_revenue)

plot(data$RevenuePerKWh_Cents, data$GDP_Billions,
     main = "GDP vs Revenue per KWh",
     xlab = "Revenue per KWh (Cents)",
     ylab = "GDP (Billions USD)",
     pch= 19, col = "blue")

abline(model_revenue, col= "red", lwd = 2)


