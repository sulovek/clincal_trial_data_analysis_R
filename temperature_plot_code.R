library(readxl)
library(reshape)
library(ggplot2)
library(dplyr)
library(psych)

temperature <- read_excel("D:/Github Folder/githubtestsulove/Dataset/temperature_data.xlsx")

# Cleaning
data <- as.data.frame(temperature)
data <- melt(data, id.var = c('Animal_ID','Group'))


# Plots

## Daily rectal temperature of all animals
ggplot(data)+
  aes(variable, value, group = Animal_ID, color = factor(Animal_ID))+
  facet_grid(rows = vars(Group))+
  geom_line(size = 1.3)+
  geom_point(size = 4)+
  geom_hline(yintercept = 37.6, linetype = 'dashed', size = 1.2)+
  geom_hline(yintercept = 39.7, linetype = 'dashed', size = 1.2)+
  scale_color_discrete(name = "Animal ID")+
  scale_y_continuous(breaks = seq(36, 42.5, by = 1))+
  theme_test(base_size = 30)+
  labs(x = "Days", y = "Rectal Temperature (\u00B0C)")

## Daily mean temperature of a Group with Standard Error in Mean Bars
sem <- data %>%
  group_by(Group, variable) %>%
  summarise(describ = describe(value))

ggplot(sem)+
  aes(x = variable, y = describ$mean, color = Group)+
  geom_pointrange(aes(x = variable, ymin = describ$mean-describ$se, ymax = describ$mean+describ$se, shape = Group),position = position_dodge2(width = 0.09),size = 1.2)+
  geom_line(aes(group = Group), size = 1.2)+
  geom_hline(yintercept = 37.6, lineQQtype = 'dashed', size = 1.2)+
  geom_hline(yintercept = 39.7, linetype = 'dashed', size = 1.2)+
  theme_classic(base_size = 20)+
  scale_y_continuous(breaks = seq(36.5, 42.5, by = 0.5))+
  scale_color_manual(values = c("darkgreen", "red"))+
  labs(x = "Days", y = "Rectal Temperature (\u00B0C)", caption = "Figure 2.1. Daily mean temperature of Group A and Group B. The bars represents standard error in mean.")

