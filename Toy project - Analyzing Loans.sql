-- Databricks notebook source
show tables

-- COMMAND ----------

select * from loan_csv

-- COMMAND ----------

describe loan_csv

-- COMMAND ----------

-- MAGIC %md
-- MAGIC Gender-wise distribution of loan taking

-- COMMAND ----------

select gender,sum(loan) from loan_csv
group by gender

-- COMMAND ----------

-- MAGIC %md
-- MAGIC # Top occupation of taking loan

-- COMMAND ----------

select distinct Occupation from loan_csv

-- COMMAND ----------

select Occupation, sum(loan) from loan_csv
group by Occupation
order by 2 desc
limit 10


-- COMMAND ----------

-- MAGIC %md
-- MAGIC Loan category distribution

-- COMMAND ----------

select distinct `Loan Category` from loan_csv

-- COMMAND ----------

select `Loan Category`, sum(loan) as compended_loan from loan_csv
group by `Loan Category`
order by compended_loan desc

-- COMMAND ----------

-- MAGIC %md
-- MAGIC Marital status taking loan

-- COMMAND ----------

select distinct `Marital Status`from loan_csv

-- COMMAND ----------

select `Marital Status`, sum(loan) as compended_loan from loan_csv
group by `Marital Status`
order by 2 desc

-- COMMAND ----------


