library(readr)
df = read.csv('C:/Users/akarch1/Desktop/Analytics_Portfolio/covid19.csv')

# TRANSPOSE DATAFRAME -> SWITCH ROWS AND COLUMNS
df2 = data.frame(t(df[-1]))
colnames(df2) = df[,1]
df = df2
df2 = NULL

# RENAME COLUMNS
colnames(df)[2] = 'Covid_cases_2020_04_05'
colnames(df)[3] = 'Households'
colnames(df)[4] = 'Population'
colnames(df)[5] = 'Unemployed'
colnames(df)[6] = 'Population_F'
colnames(df)[7] = 'Population_M'
colnames(df)[8] = 'Anxiety'
colnames(df)[9] = 'Asthma'
colnames(df)[10] = 'Overweight'
colnames(df)[11] = 'Poverty'
colnames(df)[12] = 'Smokers'
colnames(df)[13] = 'Avg_Temp'
colnames(df)[14] = 'Max_Avg_Temp'
colnames(df)[15] = 'Min_Avg_Temp'
colnames(df)[16] = 'Quality_Life'
colnames(df)[17] = 'Crime_Index'
colnames(df)[18] = 'Weather_Index'
colnames(df)[19] = 'Median_Income'

# DELETE UNNECESSARY COLUMN
df$`Geographic Unit` = NULL

# CONVERT SOME DATA TO NUMERIC FORM
df$`Covid_cases_2020-04-05` = as.numeric(as.character(df$`Covid_cases_2020-04-05`))
df$Households = as.numeric(as.character(df$Households))
df$Population = as.numeric(as.character(df$Population))
df$Unemployed = as.numeric(as.character(df$Unemployed))
df$Population_F = as.numeric(as.character(df$Population_F))
df$Population_M = as.numeric(as.character(df$Population_M))
df$Anxiety = as.numeric(as.character(df$Anxiety))
df$Asthma = as.numeric(as.character(df$Asthma))
df$Overweight = as.numeric(as.character(df$Overweight))
df$Poverty = as.numeric(as.character(df$Poverty))
df$Smokers = as.numeric(as.character(df$Smokers))
df$Avg_Temp = as.numeric(as.character(df$Avg_Temp))
df$Max_Avg_Temp = as.numeric(as.character(df$Max_Avg_Temp))
df$Min_Avg_Temp = as.numeric(as.character(df$Min_Avg_Temp))
df$Median_Income = as.numeric(as.character(df$Median_Income))

# CONVERT % TO CORRECT DECIMAL FORM
df$Unemployed = df$Unemployed/100
df$Population_F = df$Population_F/100
df$Population_M = df$Population_M/100
df$Anxiety = df$Anxiety/100
df$Asthma = df$Asthma/100
df$Overweight = df$Overweight/100
df$Poverty = df$Poverty/100
df$Smokers = df$Smokers/100

# SAVE TO NEW CSV
write.csv(df, 'C:/Users/akarch1/Desktop/Analytics_Portfolio/covid19_cleaned.csv', row.names = TRUE)