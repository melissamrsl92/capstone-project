SELECT * FROM mental_health_care_in_the_last_four_weeks;

SELECT DISTINCT indicator, percentage,subgroup,state,startdate,enddate
FROM mental_health_care_in_the_last_four_weeks 
WHERE indicator = "Took Prescription Medication for Mental Health, Last 4 Weeks" 
AND subgroup = "50 - 59 years";


SELECT indicator, percentage,subgroup,state,startdate,enddate
FROM mental_health_care_in_the_last_four_weeks 
WHERE indicator = "Received Counseling or Therapy, Last 4 Weeks" 
AND (subgroup = "Male" OR subgroup = "Female");


SELECT indicator, percentage,subgroup,state,startdate,enddate
FROM mental_health_care_in_the_last_four_weeks 
WHERE indicator = "Took Prescription Medication for Mental Health, Last 4 Weeks" 
AND (state = "West Virginia" OR state = "Virginia");


