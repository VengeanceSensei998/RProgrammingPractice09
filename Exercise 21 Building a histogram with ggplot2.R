#Exercise 21 Building a histogram with ggplot2

library(tidyverse)
install.packages("ggthemes")
library(ggthemes)
library(tibble)
library(dplyr)
library(ggplot2)
practice1 = read.csv("D:\\R Programming Exercise\\R Programming Exercise Udemy\\Data Source\\employee-data.csv", skip = 23, stringsAsFactors = FALSE)
practice1
View(practice1)

practice1_trans = as_tibble(practice1)
nrow(practice1_trans)

practice1_trans$gender = as.factor(practice1$gender)
practice1_trans$title = as.factor(practice1$title)

practice1_trans = filter(practice1_trans ,salary > 45000)
nrow(practice1_trans)
practice1_visual = ggplot(data = practice1_trans,aes(salary)) + geom_histogram(binwidth = 5000, color = "darkslategray",fill = "red",alpha = 0.5) + labs(title = "Salary distribution in the employee data",x = "Salary", y= "Number of employees in the salary bracket") +
  theme_minimal() + theme_solarized_2(light = FALSE, base_size = 15, base_family = "serif")  

practice1_visual
