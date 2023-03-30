library(reshape)
library(ggplot2)
library(dplyr)
library(psych)
library(broom)
library(knitr)

temperature <- read.csv("https://raw.githubusercontent.com/sulovek/clincal_trial_data_analysis_R/main/Dataset/temperature_data.csv")

# Converting the data format to recognizable format by ggplot
data <- melt(temperature, id.var = c('Animal_ID','Group'))


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
  geom_hline(yintercept = 37.6, linetype = 'dashed', size = 1.2)+
  geom_hline(yintercept = 39.7, linetype = 'dashed', size = 1.2)+
  theme_classic(base_size = 25)+
  scale_y_continuous(breaks = seq(36.5, 42.5, by = 0.5))+
  scale_color_manual(values = c("darkgreen", "red"))+
  labs(x = "Days", y = "Rectal Temperature (\u00B0C)", caption = "Figure 2.1. Daily mean temperature of Group A and Group B. The bars represents standard error in mean.")

## Statistical Testing
p_values <- data %>% group_by(variable) %>% do(tidy(t.test(value~Group, data=.)))
kable(p_values, format = "html")
