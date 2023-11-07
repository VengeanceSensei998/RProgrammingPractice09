#Exercise 22 Building a bar chart with ggplot2
library(tidyverse)
install.packages("ggthemes")
library(ggthemes)
library(tibble)
library(dplyr)
library(ggplot2)
practice2 = read.csv("D:\\R Programming Exercise\\R Programming Exercise Udemy\\Data Source\\employee-data.csv", skip = 23, stringsAsFactors = FALSE)
practice2

practice2 = as_tibble(practice2)
practice2$gender = as.factor(practice2$gender)
practice2$title = as.factor(practice2$title)


practie2_visual <- ggplot(data = practice2, aes(x = title, fill = gender)) +
  geom_bar() +
  theme_fivethirtyeight() +
  scale_fill_manual(values = c("chartreuse4", "darkorange")) +
  labs(title = "Job Positions by Gender",
       y = "Employee count",
       x = "Job position") 

