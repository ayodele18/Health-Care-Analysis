Create Database Plateau_State_Healthcare_Access

use Plateau_State_Healthcare_Access


Select Top 10 *
From healthcare_access_outcomes_plateau

--Gender With The most recorded Diseases--

Select Gender, Count (ID) as 'Total Diseases'
From healthcare_access_outcomes_plateau
group by Gender

--Age-Group distribution of Diseases--

Select Age_Group, Count (ID) as 'Total Diseases'
From healthcare_access_outcomes_plateau
group by Age_Group
Order by 'Total Diseases' Desc;


--Total Disease Count--
Select  Count (*) as 'Total Diseases'
From healthcare_access_outcomes_plateau;

--Total Disease Count by LGA--
Select LGA,  Count (*) as 'Disease Count'
From healthcare_access_outcomes_plateau
Group by LGA
Order by 'Disease Count' Desc;

--Disease Count by Year--
Select Year as 'Year', Count (*) as 'Disease Count'
From healthcare_access_outcomes_plateau
Group by Year;

--Most common Diseases--
Select Disease, Count (*) as 'Disease Count'
From healthcare_access_outcomes_plateau
Group by Disease
Order by 'Disease Count' Desc;

--Disease Distribution by LGA--
Select LGA, Disease, Count (*) as 'Frequency'
From healthcare_access_outcomes_plateau
Group by LGA, Disease
Order by 'Frequency' Desc;

--Filtering to find diseases reported in specific LGA--
Select Disease, Count (*) as 'Frequency'
From healthcare_access_outcomes_plateau
Where LGA = 'Mikang'
Group by Disease;

--Filtering to find diseases reported in specific Year--
Select Disease, Count (*) as 'Frequency'
From healthcare_access_outcomes_plateau
Where Year = '2022'
Group by Disease;