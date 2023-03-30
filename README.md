# Description

This repository contains R code for plotting temperature data and survival curves from different animal groups. I used this format of plot in my Master's Thesis (to be published soon). The example dataset consists of daily temperature and survival data of two groups of animals. You can add more groups to the data set as long as you do not destory the name of the columns. <b>In this example, the data were randomly generated. </b> 

Filenames in the repository
1. temperature_plot_code.R
2. survival_analysis_code.R


## 1. Daily Mean Temperature of Groups (with Standard Error in Mean)

<img src="https://github.com/sulovek/githubtestsulove/blob/26b53a9f22702662870a1e39c3ad0489a2ef7bc2/Plot%20Results/temp0.svg">

## 2. Daily Temperature of Animals 

<img src = "https://github.com/sulovek/clinicaltrialusingR/blob/5f8ae127b6fdaf2914821138b645c6787bb73418/Plot%20Results/temp1.svg">

## 3. Statistical comparision of daily temperature of two groups. 
A line of code in R has compared the daily mean rectal temperature of animals of two groups. The detailed statistics are show in the table. The test used here is Welch Two Sample t-test. The significance is displayed in the p-value column in the table. 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> Days </th>
   <th style="text-align:right;"> estimate </th>
   <th style="text-align:right;"> estimate1 </th>
   <th style="text-align:right;"> estimate2 </th>
   <th style="text-align:right;"> statistic </th>
   <th style="text-align:right;"> p-value </th>
   <th style="text-align:right;"> parameter </th>
   <th style="text-align:right;"> conf.low </th>
   <th style="text-align:right;"> conf.high </th>
   <th style="text-align:left;"> method </th>
   <th style="text-align:left;"> alternative </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:right;"> 0.3285714 </td>
   <td style="text-align:right;"> 38.64286 </td>
   <td style="text-align:right;"> 38.31429 </td>
   <td style="text-align:right;"> 0.6921142 </td>
   <td style="text-align:right;"> 0.5036744 </td>
   <td style="text-align:right;"> 10.651101 </td>
   <td style="text-align:right;"> -0.7205064 </td>
   <td style="text-align:right;"> 1.3776492 </td>
   <td style="text-align:left;"> Welch Two Sample t-test </td>
   <td style="text-align:left;"> two.sided </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:right;"> -1.0857143 </td>
   <td style="text-align:right;"> 38.37143 </td>
   <td style="text-align:right;"> 39.45714 </td>
   <td style="text-align:right;"> -3.0473224 </td>
   <td style="text-align:right;"> 0.0101351 </td>
   <td style="text-align:right;"> 11.999876 </td>
   <td style="text-align:right;"> -1.8619928 </td>
   <td style="text-align:right;"> -0.3094358 </td>
   <td style="text-align:left;"> Welch Two Sample t-test </td>
   <td style="text-align:left;"> two.sided </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:right;"> -2.3571429 </td>
   <td style="text-align:right;"> 38.67143 </td>
   <td style="text-align:right;"> 41.02857 </td>
   <td style="text-align:right;"> -5.0895875 </td>
   <td style="text-align:right;"> 0.0003626 </td>
   <td style="text-align:right;"> 10.873212 </td>
   <td style="text-align:right;"> -3.3779381 </td>
   <td style="text-align:right;"> -1.3363476 </td>
   <td style="text-align:left;"> Welch Two Sample t-test </td>
   <td style="text-align:left;"> two.sided </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:right;"> -2.6571429 </td>
   <td style="text-align:right;"> 38.20000 </td>
   <td style="text-align:right;"> 40.85714 </td>
   <td style="text-align:right;"> -4.2091935 </td>
   <td style="text-align:right;"> 0.0012296 </td>
   <td style="text-align:right;"> 11.919305 </td>
   <td style="text-align:right;"> -4.0335982 </td>
   <td style="text-align:right;"> -1.2806875 </td>
   <td style="text-align:left;"> Welch Two Sample t-test </td>
   <td style="text-align:left;"> two.sided </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:right;"> -2.2714286 </td>
   <td style="text-align:right;"> 39.15714 </td>
   <td style="text-align:right;"> 41.42857 </td>
   <td style="text-align:right;"> -3.5461989 </td>
   <td style="text-align:right;"> 0.0056416 </td>
   <td style="text-align:right;"> 9.608275 </td>
   <td style="text-align:right;"> -3.7065333 </td>
   <td style="text-align:right;"> -0.8363238 </td>
   <td style="text-align:left;"> Welch Two Sample t-test </td>
   <td style="text-align:left;"> two.sided </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:right;"> -2.9571429 </td>
   <td style="text-align:right;"> 38.38571 </td>
   <td style="text-align:right;"> 41.34286 </td>
   <td style="text-align:right;"> -6.6259085 </td>
   <td style="text-align:right;"> 0.0001317 </td>
   <td style="text-align:right;"> 8.407431 </td>
   <td style="text-align:right;"> -3.9776954 </td>
   <td style="text-align:right;"> -1.9365903 </td>
   <td style="text-align:left;"> Welch Two Sample t-test </td>
   <td style="text-align:left;"> two.sided </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:right;"> -2.9857143 </td>
   <td style="text-align:right;"> 37.94286 </td>
   <td style="text-align:right;"> 40.92857 </td>
   <td style="text-align:right;"> -6.4103192 </td>
   <td style="text-align:right;"> 0.0000602 </td>
   <td style="text-align:right;"> 10.565627 </td>
   <td style="text-align:right;"> -4.0160258 </td>
   <td style="text-align:right;"> -1.9554028 </td>
   <td style="text-align:left;"> Welch Two Sample t-test </td>
   <td style="text-align:left;"> two.sided </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:right;"> -2.4571429 </td>
   <td style="text-align:right;"> 38.24286 </td>
   <td style="text-align:right;"> 40.70000 </td>
   <td style="text-align:right;"> -4.7419341 </td>
   <td style="text-align:right;"> 0.0006469 </td>
   <td style="text-align:right;"> 10.751524 </td>
   <td style="text-align:right;"> -3.6008583 </td>
   <td style="text-align:right;"> -1.3134274 </td>
   <td style="text-align:left;"> Welch Two Sample t-test </td>
   <td style="text-align:left;"> two.sided </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:right;"> -2.2000000 </td>
   <td style="text-align:right;"> 38.72857 </td>
   <td style="text-align:right;"> 40.92857 </td>
   <td style="text-align:right;"> -3.3957739 </td>
   <td style="text-align:right;"> 0.0064020 </td>
   <td style="text-align:right;"> 10.461637 </td>
   <td style="text-align:right;"> -3.6349434 </td>
   <td style="text-align:right;"> -0.7650566 </td>
   <td style="text-align:left;"> Welch Two Sample t-test </td>
   <td style="text-align:left;"> two.sided </td>
  </tr>
</tbody>
</table>

## 4. Kaplan-Meier Survival Curves
<img src = "https://raw.githubusercontent.com/sulovek/clincal_trial_data_analysis_R/main/Plot%20Results/survival.svg">
In the figure, the p value represents the log-rank test. If you want to add the risk table, simple put risk.table value as "T" instead of "F" as written in the example dataset. 

## Collaboration
If you need help in making plots for clinical trial. Do not hesitate to contact me by email: sulovekoriala@gmail.com


