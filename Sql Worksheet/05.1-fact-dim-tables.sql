CREATE or replace transient TABLE cricket.consumption.date_rnage01 (Date DATE);
insert into cricket.consumption.date_rnage01 (date) values 
  ('2023-10-12'),
  ('2023-10-13'),
  ('2023-10-14'),
  ('2023-10-15'),
  ('2023-10-16'),
  ('2023-10-17'),
  ('2023-10-18'),
  ('2023-10-19'),
  ('2023-10-20'),
  ('2023-10-21'),
  ('2023-10-22'),
  ('2023-10-23'),
  ('2023-10-24'),
  ('2023-10-25'),
  ('2023-10-26'),
  ('2023-10-27'),
  ('2023-10-28'),
  ('2023-10-29'),
  ('2023-10-30'),
  ('2023-10-31'),
  ('2023-11-01'),
  ('2023-11-02'),
  ('2023-11-03'),
  ('2023-11-04'),
  ('2023-11-05'),
  ('2023-11-06'),
  ('2023-11-07'),
  ('2023-11-08'),
  ('2023-11-09'),
  ('2023-11-10');

INSERT INTO cricket.consumption.date_dim (Date_ID, Full_Dt, Day, Month, Year, Quarter, DayOfWeek, DayOfMonth, DayOfYear, DayOfWeekName, IsWeekend)
SELECT
    ROW_NUMBER() OVER (ORDER BY Date) AS DateID,
    Date AS FullDate,
    EXTRACT(DAY FROM Date) AS Day,
    EXTRACT(MONTH FROM Date) AS Month,
    EXTRACT(YEAR FROM Date) AS Year,
    CASE WHEN EXTRACT(QUARTER FROM Date) IN (1, 2, 3, 4) THEN EXTRACT(QUARTER FROM Date) END AS Quarter,
    DAYOFWEEKISO(Date) AS DayOfWeek,
    EXTRACT(DAY FROM Date) AS DayOfMonth,
    DAYOFYEAR(Date) AS DayOfYear,
    DAYNAME(Date) AS DayOfWeekName,
    CASE When DAYNAME(Date) IN ('Sat', 'Sun') THEN 1 ELSE 0 END AS IsWeekend
FROM cricket.consumption.date_rnage01;


select * from cricket.consumption.date_dim;
