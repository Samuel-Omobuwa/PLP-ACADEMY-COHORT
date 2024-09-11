-- Selecting my data base
USE hospital_db;

-- question 1.1
SELECT 
first_name, 
last_name,
date_of_birth
FROM patients;

-- question 1.2
SELECT 
provider_id, 
first_name,
provider_specialty
FROM providers;

-- question 2.1
SELECT * 
FROM patients
WHERE first_name LIKE 'Ab%';

-- question 2.2
SELECT * 
FROM providers
WHERE provider_specialty LIKE '%y';

-- question 3.1
SELECT * 
FROM patients
WHERE date_of_birth > '1980-01-01';

-- question 3.2
SELECT * 
FROM ed_visits
WHERE acuity >= '2';

-- question 4.1
SELECT * FROM patients
WHERE language = 'Spanish'

-- question 4.2
SELECT * 
FROM ed_visits
WHERE reason_for_visit = 'Migraine'  
AND ed_disposition = 'Admitted' ;


-- question 4.3
SELECT * 
FROM patients
WHERE date_of_birth 
BETWEEN '1975-01-01' 
AND '1980-12-31';

-- question 5.1
SELECT first_name, last_name 
FROM patients
ORDER BY first_name ASC;

-- question 5.2
SELECT * 
FROM visits
ORDER BY date_of_visit DESC;
