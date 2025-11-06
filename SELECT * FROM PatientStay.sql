SELECT  PS.PatientId
,PS.Hospital
,PS.ward
,PS.AdmittedDate 
,PS.DischargeDate
            ,DATEADD(WEEK,-2, PS.AdmittedDate) AS REMINDERDATE
            ,DATEDIFF(DAY, PS.ADMITTEDDATE, PS.DISCHARGEDATE) +1 AS  DAYSINHOSPITAL
    FROM PatientStay PS
WHERE PS.Hospital IN ('Kingston', 'pruh')
ORDER BY 
    PS.PatientId DESC
 --   ,AdmittedDate DESC
  --   , DischargeDate DESC
 --AND  Ward like '%surgery%'
 --AND  Ward like '%surgery%' , 'GENERAL SURGERY')
-- AND AdmittedDate BETWEEN '2024-02-27'AND '2024-03-01'
SELECT DATEDIFF(DAY,'2025-01-14', '2025-07-22')

SELECT * FROM DimHospitalBad

SELECT
    p.PatientId
    ,p.AdmittedDate
    ,p.DischargeDate
    ,h.HospitalType
    ,P.Hospital
    , H.Hospital
FROM PatientStay p RIGHT JOIN DimHospitalBad h ON p.Hospital = h.Hospital

WHERE H.HospitalType IS NULL

