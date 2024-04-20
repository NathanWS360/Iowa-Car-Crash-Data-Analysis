# Removing errors from column names:
ALTER TABLE crash_table RENAME COLUMN ï»¿Date TO Date;
ALTER TABLE population_table RENAME COLUMN ï»¿Year TO Year;
ALTER TABLE date_table RENAME COLUMN ï»¿Date TO Date;

# Removing spaces from column names:
ALTER TABLE date_table RENAME COLUMN `Day Of Week Number` TO Day_of_Week_Num;
ALTER TABLE date_table RENAME COLUMN `Day Of Week` TO Day_of_Week;