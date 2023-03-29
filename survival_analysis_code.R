library(readxl)
library(survival)
library(survminer)
library(readxl)
library(ggthemes)

library(readxl)
survival <- read_excel("D:/Github Folder/githubtestsulove/Dataset/survival_analysis_data.xlsx")

fit<-survfit(Surv(Time,Death)~Group,data=survival)
summary(fit)

ggsurvplot(fit, title = "Kaplan-Meier Survival Curves", pval = T, size = 2.3, xlab = "Days",risk.table = F,
           ggtheme = theme_pander(base_family = "Arial", base_size = 26),
           font.family = "Arial")

