# Exercise 1
#-- Ex1. Task3. 14.--------------------
ds.awtdata <- maml.mapInputPort(1)

# Remove rows with missing values in DepDel15
ds.awtdata <- ds.awtdata[!is.na(ds.awtdata$DepDel15), ]

# substitute missing values in HourlyPrecip & WindSpeed
ds.awtdata$HourlyPrecip[is.na(ds.awtdata$HourlyPrecip)] <- 0.0
ds.awtdata$WindSpeed[is.na(ds.awtdata$WindSpeed)] <- 0.0

# Replace any WindSpeed values of "M" with 0.005 and make the feature numeric
speed.num = ds.awtdata$WindSpeed
speed.num[speed.num == "M"] = 0.005
speed.num = as.numeric(speed.num)
ds.awtdata$WindSpeed = speed.num 

# Replace any SeaLevelPressure values of "M" with 29.92 (the average pressure) and make the feature numeric
pressure.num = ds.awtdata$SeaLevelPressure
pressure.num[pressure.num == "M"] = 29.92
pressure.num = as.numeric(pressure.num)
ds.awtdata$SeaLevelPressure = pressure.num 

# Adjust the HourlyPrecip variable (convert "T" (trace) to 0.005)
rain = ds.awtdata$HourlyPrecip
rain[rain %in% c("T")] = "0.005"
ds.awtdata$HourlyPrecip = as.numeric(rain)

# cast some of the data types to factor (categorical)
ds.awtdata$OriginAirportCode <- as.factor(ds.awtdata$OriginAirportCode)

# cast some of the data types to factor (categorical)
ds.awtdata$DayOfWeek <- as.factor(ds.awtdata$DayOfWeek)
ds.awtdata$Carrier <- as.factor(ds.awtdata$Carrier)
ds.awtdata$DestAirportCode <- as.factor(ds.awtdata$DestAirportCode)
ds.awtdata$OriginAirportCode <- as.factor(ds.awtdata$OriginAirportCode)

maml.mapOutputPort("ds.awtdata");
#----------------------------------------