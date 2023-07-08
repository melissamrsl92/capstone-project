#Reading the dataset
dataset <- read.csv("mental_health_care_in_the_last_four_weeks.csv")

#Filtering the dataset by age range of 50 - 59 years 
#and those who Took prescription medication for mental health 
#in the last 4 weeks within US
filtered_data <- subset(dataset, subgroup == "50 - 59 years" & indicator == "Took Prescription Medication for Mental Health, Last 4 Weeks")

#Filtering the dataset by gender
#and those who received counseling/therapy for mental health 
#in the last 4 weeks within US
filtered_data_Gender <- subset(dataset, subgroup %in% c("Female", "Male") & indicator == "Received Counseling or Therapy, Last 4 Weeks")

#Filtering the dataset by state
#and those who Took prescription medication for mental health 
#in the last 4 weeks within US
filtered_data_State <- subset(dataset, state %in% c("West Virginia", "Virginia") & indicator == "Took Prescription Medication for Mental Health, Last 4 Weeks")


#I am filtering the dataset by age range
# removing the rows that have the percentage as NA
filtered_data_age <- subset(dataset, subgroup == "50 - 59 years" & percentage != "NA" & indicator == "Took Prescription Medication for Mental Health, Last 4 Weeks")

#Grabbing the sum of the percentages after removing the NA
sum_percentage_age <- sum(filtered_data_age$percentage)

#Grabbing the Average of the percentages
average_percentage_age <- mean(filtered_data_age$percentage)

#Filtering the dataset by the gender "Female"
filtered_data_female <- subset(dataset, subgroup == "Female" & percentage != "NA" & indicator == "Received Counseling or Therapy, Last 4 Weeks")

#Grabbing the sum of percentages of females 
#who received Counseling/ therapy in the last 4 weeks
sum_percentage_female <- sum(filtered_data_female$percentage)

#Grabbing the Average of the percentages of females 
#who received Counseling/ therapy in the last 4 weeks
average_percentage_female <- mean(filtered_data_female$percentage)

#Filtering the dataset by the gender "Male"
filtered_data_male <- subset(dataset, subgroup == "Male" & percentage != "NA" & indicator == "Received Counseling or Therapy, Last 4 Weeks")

#Grabbing the sum of percentages of male 
#who received Counseling/ therapy in the last 4 weeks
sum_percentage_male <- sum(filtered_data_male$percentage)

#Grabbing the Average of the percentages of male
#who received Counseling/ therapy in the last 4 weeks
average_percentage_male <- mean(filtered_data_male$percentage)

#Filtering the dataset by the state "West Virginia"
filtered_data_wv <- subset(dataset, state == "West Virginia" & percentage != "NA" & indicator == "Took Prescription Medication for Mental Health, Last 4 Weeks")

#Grabbing the sum of percentages of West Virginia 
#who took prescription medication for mental health in the last 4 weeks
sum_percentage_wv <- sum(filtered_data_wv$percentage)

#Grabbing the Average of the percentages of westvirgina
#who received Counseling/ therapy in the last 4 weeks
average_percentage_wv <- mean(filtered_data_wv$percentage)

#Filtering the dataset by the state "Virginia"
filtered_data_va <- subset(dataset, state == "Virginia" & percentage != "NA" & indicator == "Took Prescription Medication for Mental Health, Last 4 Weeks")

#Grabbing the sum of percentages of Virginia 
#who took prescription medication for mental health in the last 4 weeks
sum_percentage_va <- sum(filtered_data_va$percentage)

#Grabbing the Average of the percentages of virgina
#who received Counseling/ therapy in the last 4 weeks
average_percentage_va <- mean(filtered_data_va$percentage)