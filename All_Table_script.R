# Load packages 
library(tidyverse)
library(gtsummary)
library(flextable)
library(officer)
library(likert)


# Loading Data
dt <- readxl::read_excel("E:/Project of R/Internship_Project_R/R_for_research/Assignment_project_R/AMR_Parental_KAP.xlsx")


# Table 1: Demographic
table1 <- dt |> 
  dplyr::select(1:11) |> 
  tbl_summary(missing = "no", 
              type = everything() ~ "categorical",
              `Parent's age` ~ "continuous",
                `Child's age` ~ "continuous") |>
  as_flex_table() |> 
  set_table_properties(width = 1, layout = "autofit")

table1
# Export table 1 
save_as_docx(table1, path = "tables/Table1.docx")



# Table 2:  
table2 <- dt |> 
  dplyr::select(12:23) |> 
  tbl_summary(missing = "no", 
              type = everything() ~ "categorical") |> 
  as_flex_table() |> 
  set_table_properties(width = 1, layout = "autofit")

table2
# Export table 2 
save_as_docx(table2, path = "tables/Table2.docx")


# Table 3:  
table3 <- dt |> 
  dplyr::select(24:33) |> 
  tbl_summary(missing = "no", 
              type = everything() ~ "categorical") |> 
  as_flex_table() |> 
  set_table_properties(width = 1, layout = "autofit")

table3
# Export table 3
save_as_docx(table3, path = "tables/Table3.docx")


# Table 4:   
table4 <- dt |> 
  dplyr::select(34:39) |> 
  tbl_summary(missing = "no", 
              type = everything() ~ "categorical") |> 
  as_flex_table() |>
  set_table_properties(width = 1, layout = "autofit")

table4
# Export table 4 
save_as_docx(table4, path = "tables/Table4.docx")


# Table 5:    
table5 <- dt |> 
  dplyr::select(41:49) |>
  tbl_summary(missing = "no") |> 
  as_flex_table() |> 
  set_table_properties(width = 1, layout = "autofit")

table5 
# Export table 5
save_as_docx(table5, path = "tables/Table5.docx")


# Table 6:  
table6 <- dt |> 
  dplyr::select(51:62) |> 
  mutate(Others = `Others...49`) |> 
  tbl_summary(missing = "no") |> 
  as_flex_table() |> 
  set_table_properties(width = 1, layout = "autofit")

table6 
# Export table 6
save_as_docx(table6, path = "tables/Table6.docx")