library(stringr)
library(tidyr)
library(tidyverse)
library(lubridate)

cleaned_df <- df

# addr_pct_cd has 20 na values
sum(is.na(df$addr_pct_cd))
cleaned_df <- replace_na(cleaned_df, list(addr_pct_cd = "(null)"))
sum(str_detect(cleaned_df$addr_pct_cd, '(null)'))

# boro_nm has 0 na values, 657 null values
sum(is.na(df$boro_nm))
sum(str_detect(df$boro_nm, '(null)'))
sum(str_detect(df$boro_nm, 'UNKONWN'))

# cmplnt_fr_dt has 0 na values, but it has incorrect values 
sum(is.na(df$cmplnt_fr_dt))
sum(str_detect(df$cmplnt_fr_dt, '(null)'))
sum(str_detect(df$cmplnt_fr_dt, 'UNKONWN'))

# cmplnt_fr_tm and cmplnt_to_tm could be deleted from final dataset

# cmplnt_to_dt has 29393 na values
sum(is.na(df$cmplnt_to_dt))
cleaned_df <- replace_na(cleaned_df, list(cmplnt_to_dt = ymd("2023-01-01")))
sum(str_detect(cleaned_df$cmplnt_to_dt, '(null)'))
sum(str_detect(cleaned_df$cmplnt_to_dt, 'UNKONWN'))

# crm_atpt_cptd_cd has 0 na values
sum(is.na(df$crm_atpt_cptd_cd))
sum(str_detect(df$crm_atpt_cptd_cd, '(null)'))
sum(str_detect(df$crm_atpt_cptd_cd, 'UNKONWN'))

# hadevelopt has 0 na values, 395756 null values 
sum(is.na(df$hadevelopt))
sum(str_detect(df$hadevelopt, '(null)'))
sum(str_detect(df$hadevelopt, 'UNKONWN'))

# housing_psa variable can be removed

# jurisdiction_code has 0 na values, 0 null values 
sum(is.na(df$jurisdiction_code))
sum(str_detect(df$jurisdiction_code, '(null)'))
sum(str_detect(df$jurisdiction_code, 'UNKONWN'))

# juris_desc has 0 na values, 0 null values
sum(is.na(df$juris_desc))
sum(str_detect(df$juris_desc, '(null)'))
sum(str_detect(df$juris_desc, 'UNKONWN'))

# ky_cd has 0 na values, 0 null values
sum(is.na(df$ky_cd))
sum(str_detect(df$ky_cd, '(null)'))
sum(str_detect(df$ky_cd, 'UNKONWN'))

# lawcat_cd has 0 na values, 0 null values
sum(is.na(df$law_cat_cd))
sum(str_detect(df$lawcat_cd, '(null)'))
sum(str_detect(df$lawcat_cd, 'UNKONWN'))

# loc_of_occur_desc has 0 na values, 66081 null values
sum(is.na(df$loc_of_occur_desc))
sum(str_detect(df$loc_of_occur_desc, '(null)'))
sum(str_detect(df$loc_of_occur_desc, 'UNKONWN'))

# ofns_desc has 0 na values, 5 null values
sum(is.na(df$ofns_desc))
sum(str_detect(df$ofns_desc, '(null)'))
sum(str_detect(df$ofns_desc, 'UNKONWN'))

# parks_nm can be removed

# patrol_boro
sum(is.na(df$patrol_boro))


