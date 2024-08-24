library(tidyverse)
library(likert)
library(ggpubr)
library(ggthemes)
library(RColorBrewer)

dt <- readxl::read_excel("E:/Project of R/Internship_Project_R/R_for_research/Assignment_project_R/AMR_parental_KAP.xlsx")
view(dt)

#  Practices among parents of school-going children regarding antibiotic resistance (N=704) 
practices <- dt |> 
  dplyr::select(34:39) |> 
  mutate_if(is.character, as.factor) |> 
  as.data.frame() 

# Plot in likert 
p3 <- plot(likert(practices), ordered = F, wrap= 60)
p3+ theme_pubr()
ggsave("figures/practices.tiff", units="in", width=12, height=6, dpi=600, compression = 'lzw')
