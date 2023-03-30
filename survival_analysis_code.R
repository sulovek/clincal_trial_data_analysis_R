library(readxl)
library(survival)
library(survminer)

library(readxl)
survival <- read.csv("https://raw.githubusercontent.com/sulovek/clincal_trial_data_analysis_R/main/Dataset/survival_analysis_data.csv")

fit<-survfit(Surv(Time,Death)~Group,data=survival)
summary(fit)

ggsurvplot(fit, title = "Kaplan-Meier Survival Curves", pval = T, size = 2.3, xlab = "Days",risk.table = F,
           ggtheme = theme_base(base_family = "Arial", base_size = 26),
           font.family = "Arial")

