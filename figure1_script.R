library(tidyverse)
library(likert)
library(ggpubr)
library(ggthemes)
library(RColorBrewer)

dt <- readxl::read_excel("E:/Project of R/Internship_Project_R/R_for_research/Assignment_project_R/AMR_parental_KAP.xlsx")
view(dt)
# Distribution of knowledge of antibiotic resistance among parents of school-going children (N=704). 
knowledge_df <- dt |> 
  select(12:23) |> 
  mutate_if(is.character, as.factor) |> 
  as.data.frame() 

# Plot in likert 
p1 <- plot(likert(knowledge_df), 
           ordered = FALSE, 
           group.order = names(knowledge_df), 
           center = 2) 
p1 + theme_pubr()

ggsave("figures/Knowledge.tiff", units="in", width=12, height=6, dpi=600, compression = 'lzw')