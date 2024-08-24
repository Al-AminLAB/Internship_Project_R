library(tidyverse)
library(likert)
library(ggpubr)
library(ggthemes)
library(RColorBrewer)

dt <- readxl::read_excel("E:/Project of R/Internship_Project_R/R_for_research/Assignment_project_R/AMR_parental_KAP.xlsx")
view(dt)

#  Attitude towards antibiotic resistance and the misuse of antibiotics among parents of school-going children (N=704).

attitude <- dt |> 
  select(24:33) |> 
  mutate_if(is.character, as.factor) |> 
  as.data.frame() 


# Plot in likert 
p2 <- plot(likert(attitude), 
           ordered = FALSE, 
           group.order = names(attitude), 
           center = 2) 
p2 + theme_pubr()

ggsave("figures/attitude.tiff", units="in", width=12, height=6, dpi=600, compression = 'lzw')