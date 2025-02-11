-- Database Schema
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    IncomeLevel VARCHAR(50)
);

CREATE TABLE CookingTechnologies (
    TechnologyID INT PRIMARY KEY,
    TechnologyName VARCHAR(100),
    TechnologyType VARCHAR(50)
);

CREATE TABLE AccessRecords (
    RecordID INT PRIMARY KEY,
    UserID INT,
    TechnologyID INT,
    AccessDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (TechnologyID) REFERENCES CookingTechnologies(TechnologyID)
);

CREATE TABLE HealthImpactData (
    ImpactID INT PRIMARY KEY,
    UserID INT,
    HealthIssue VARCHAR(100),
    SeverityLevel VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Populate sample data

-- Inserting Users (50 records)
INSERT INTO Users (UserID, Name, Location, IncomeLevel) VALUES
(1, 'John', 'Nairobi', 'Medium'),
(2, 'Alice', 'Lagos', 'High'),
(3, 'Maria', 'Dar es Salaam', 'Low'),
(4, 'David', 'Accra', 'High'),
(5, 'Fatima', 'Lagos', 'Medium'),
(6, 'Samuel', 'Nairobi', 'Low'),
(7, 'Amina', 'Kampala', 'Medium'),
(8, 'Joseph', 'Abuja', 'Low'),
(9, 'Hassan', 'Mombasa', 'High'),
(10, 'Eunice', 'Kinshasa', 'Medium'),
(11, 'Michael', 'Cairo', 'High'),
(12, 'Sophia', 'Addis Ababa', 'Low'),
(13, 'Emmanuel', 'Kigali', 'Medium'),
(14, 'Linda', 'Bamako', 'Low'),
(15, 'Omar', 'Dakar', 'High'),
(16, 'Grace', 'Johannesburg', 'Medium'),
(17, 'Victor', 'Maputo', 'Low'),
(18, 'Paul', 'Harare', 'Medium'),
(19, 'Brenda', 'Yaoundé', 'High'),
(20, 'James', 'Antananarivo', 'Low'),
(21, 'Janet', 'Nouakchott', 'Medium'),
(22, 'Eric', 'Port Louis', 'High'),
(23, 'Zainab', 'Gaborone', 'Medium'),
(24, 'Daniel', 'Asmara', 'Low'),
(25, 'Olivia', 'Dodoma', 'High'),
(26, 'Felix', 'Brazzaville', 'Medium'),
(27, 'Nancy', 'Bujumbura', 'Low'),
(28, 'Peter', 'Lilongwe', 'Medium'),
(29, 'Susan', 'Lusaka', 'High'),
(30, 'Leon', 'Tripoli', 'Low'),
(31, 'Hannah', 'Khartoum', 'Medium'),
(32, 'Moses', 'Windhoek', 'High'),
(33, 'Catherine', 'Freetown', 'Low'),
(34, 'Elijah', 'Banjul', 'Medium'),
(35, 'Joel', 'Monrovia', 'High'),
(36, 'Edith', 'Victoria', 'Low'),
(37, 'Thomas', 'Malabo', 'Medium'),
(38, 'Christine', 'Lome', 'High'),
(39, 'Henry', 'Ouagadougou', 'Low'),
(40, 'Deborah', 'Conakry', 'Medium'),
(41, 'Joshua', 'Djibouti', 'High'),
(42, 'Ruth', 'N’Djamena', 'Low'),
(43, 'Albert', 'Luanda', 'Medium'),
(44, 'Rebecca', 'Juba', 'High'),
(45, 'Kennedy', 'Bangui', 'Low'),
(46, 'Joyce', 'Praia', 'Medium'),
(47, 'Patrick', 'Moroni', 'High'),
(48, 'Gloria', 'São Tomé', 'Low'),
(49, 'Edwin', 'Libreville', 'Medium'),
(50, 'Sarah', 'Asmara', 'High');

-- Inserting Cooking Technologies (10 records)
INSERT INTO CookingTechnologies (TechnologyID, TechnologyName, TechnologyType) VALUES
(1, 'Solar Cooker', 'Renewable'),
(2, 'Biogas Stove', 'Renewable'),
(3, 'Electric Stove', 'Non-Renewable'),
(4, 'Charcoal Stove', 'Non-Renewable'),
(5, 'Wood Stove', 'Non-Renewable'),
(6, 'Kerosene Stove', 'Non-Renewable'),
(7, 'LPG Gas Stove', 'Non-Renewable'),
(8, 'Ethanol Stove', 'Renewable'),
(9, 'Induction Cooker', 'Renewable'),
(10, 'Pellet Stove', 'Renewable');

-- Inserting Access Records (30 records)
INSERT INTO AccessRecords (RecordID, UserID, TechnologyID, AccessDate) VALUES
(1, 1, 1, '2024-01-05'),
(2, 2, 2, '2024-01-10'),
(3, 3, 3, '2024-01-15'),
(4, 4, 4, '2024-01-20'),
(5, 5, 5, '2024-01-25'),
(6, 6, 6, '2024-02-01'),
(7, 7, 7, '2024-02-05'),
(8, 8, 8, '2024-02-10'),
(9, 9, 9, '2024-02-15'),
(10, 10, 10, '2024-02-20'),
(11, 11, 1, '2024-02-25'),
(12, 12, 2, '2024-03-01'),
(13, 13, 3, '2024-03-05'),
(14, 14, 4, '2024-03-10'),
(15, 15, 5, '2024-03-15'),
(16, 16, 6, '2024-03-20'),
(17, 17, 7, '2024-03-25'),
(18, 18, 8, '2024-04-01'),
(19, 19, 9, '2024-04-05'),
(20, 20, 10, '2024-04-10'),
(21, 21, 1, '2024-04-15'),
(22, 22, 2, '2024-04-20'),
(23, 23, 3, '2024-04-25'),
(24, 24, 4, '2024-05-01'),
(25, 25, 5, '2024-05-05'),
(26, 26, 6, '2024-05-10'),
(27, 27, 7, '2024-05-15'),
(28, 28, 8, '2024-05-20'),
(29, 29, 9, '2024-05-25'),
(30, 30, 10, '2024-06-01');

-- Inserting Health Impact Data (20 records)
INSERT INTO HealthImpactData (ImpactID, UserID, HealthIssue, SeverityLevel) VALUES
(1, 1, 'Asthma', 'Severe'),
(2, 2, 'Chronic Cough', 'Medium'),
(3, 3, 'Smoke Inhalation', 'High'),
(4, 4, 'Burn Injuries', 'Low'),
(5, 5, 'Eye Infections', 'Severe'),
(6, 6, 'Carbon Monoxide Poisoning', 'High'),
(7, 7, 'Bronchitis', 'Moderate'),
(8, 8, 'Skin Irritation', 'Low'),
(9, 9, 'Lung Disease', 'Severe'),
(10, 10, 'Respiratory Issues', 'High'),
(11, 11, 'Cardiovascular Issues', 'Medium'),
(12, 12, 'Chronic Obstructive Pulmonary Disease', 'Severe'),
(13, 13, 'Pneumonia', 'High'),
(14, 14, 'Burn Injuries', 'Low'),
(15, 15, 'Asthma', 'Moderate'),
(16, 16, 'Chronic Cough', 'Severe'),
(17, 17, 'Smoke Inhalation', 'High'),
(18, 18, 'Skin Irritation', 'Low'),
(19, 19, 'Carbon Monoxide Poisoning', 'Medium'),
(20, 20, 'Respiratory Issues', 'High');

-- SQL PROGRAMMING QUESTION
-- 1. What is the distribution of cooking technology access among users?
SELECT ct.TechnologyName, COUNT(ar.UserID) AS NumberOfUsers
FROM AccessRecords ar
JOIN CookingTechnologies ct ON ar.TechnologyID = ct.TechnologyID
GROUP BY ct.TechnologyName;

-- 2. What are the common health issues reported by users, and how do they relate to their cooking technology?
SELECT h.HealthIssue, COUNT(h.UserID) AS NumberOfCases
FROM HealthImpactData h
JOIN AccessRecords ar ON h.UserID = ar.UserID
JOIN CookingTechnologies ct ON ar.TechnologyID = ct.TechnologyID
GROUP BY h.HealthIssue;

-- 3. How does income level affect access to clean cooking technologies?
SELECT u.IncomeLevel, ct.TechnologyName, COUNT(ar.UserID) AS NumberOfUsers
FROM Users u
JOIN AccessRecords ar ON u.UserID = ar.UserID
JOIN CookingTechnologies ct ON ar.TechnologyID = ct.TechnologyID
GROUP BY u.IncomeLevel, ct.TechnologyName;

-- 4. What is the relationship between access to clean cooking technologies and reported health severity levels?
SELECT ct.TechnologyName, h.SeverityLevel, COUNT(h.ImpactID) AS NumberOfCases
FROM HealthImpactData h
JOIN AccessRecords ar ON h.UserID = ar.UserID
JOIN CookingTechnologies ct ON ar.TechnologyID = ct.TechnologyID
GROUP BY ct.TechnologyName, h.SeverityLevel;

-- 5. What trends can be observed over time regarding access to technologies?
SELECT YEAR(AccessDate) AS Year, ct.TechnologyName, COUNT(ar.RecordID) AS NumberOfAccesses
FROM AccessRecords ar
JOIN CookingTechnologies ct ON ar.TechnologyID = ct.TechnologyID
GROUP BY Year, ct.TechnologyName;
