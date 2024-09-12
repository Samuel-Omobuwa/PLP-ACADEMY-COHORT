-- question 1.1
SELECT COUNT(*) 
AS total_admissions
FROM admissions

-- question 1.2
SELECT 
AVG(DATEDIFF(discharge_date, admission_date)) 
AS avg_day_of_stay
FROM admissions,  discharges;

-- question 2.1
SELECT primary_diagnosis, 
COUNT(*) AS total_admission
FROM admissions
GROUP BY primary_diagnosis;

-- question 2.2
SELECT service, AVG(DATEDIFF(discharge_date, admission_date)) AS avg_time_of_stay
FROM admissions, discharges
GROUP BY  service

-- question 2.3
SELECT discharge_disposition, COUNT(*) AS total_discharges
FROM discharges
GROUP BY discharge_disposition;

-- question 3.1
SELECT service, COUNT(*) AS total_service
FROM admissions
GROUP BY service
HAVING COUNT(*) > 5;

-- question 3.2
SELECT primary_diagnosis, AVG(DATEDIFF(discharge_date, admission_date)) AS avg_time_of_stay
FROM admissions, discharges
WHERE primary_diagnosis = "Stroke";

-- question 4.1
SELECT acuity, COUNT(*) AS total_aquity
FROM ed_visits
GROUP BY acuity;

-- question 4.2
SELECT primary_diagnosis, COUNT(*) AS total_admission
FROM admissions
GROUP BY primary_diagnosis, service;

-- question 5.1
SELECT MONTH(admission_date) AS month, COUNT(*) AS total_admission
FROM admissions
GROUP BY MONTH(admission_date);

-- question 5.2
SELECT primary_diagnosis, MAX(DATEDIFF(discharge_date, admission_date)) AS max_length_of_day
FROM admissions, discharges
GROUP BY primary_diagnosis;