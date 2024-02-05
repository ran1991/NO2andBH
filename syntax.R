


### MAIN ANALYSIS ###

model1 <- coxph(Surv(dementia_time,dementia)~NO2_iqr+age+sex+imd, data0)
model2 <- coxph(Surv(dementia_time,dementia)~NO2_iqr+age+sex+imd+whr+nosmoking+nodrinking+sleeph+regular+dieth+road1+lden, data0)

model3 <- coxph(Surv(dementia_time,dementia)~NO2_category+age+sex+imd, data0)
model4 <- coxph(Surv(dementia_time,dementia)~NO2_category+age+sex+imd+whr+nosmoking+nodrinking+sleeph+regular+dieth+road1+lden, data0)


### INTERACTION ANALYSIS ###
model5 <- coxph(Surv(dementia_time,dementia)~NO2_iqr*sex+age+imd+whr+nosmoking+nodrinking+sleeph+regular+dieth+road1+lden, data0)
model6 <- coxph(Surv(dementia_time,dementia)~NO2_category*sex+age+imd+whr+nosmoking+nodrinking+sleeph+regular+dieth+road1+lden, data0)


### ANALYSIS FOR BRAIN IMAGING PHENOTYPES ###
model7 <- glm(gmv ~ NO2_iqr+age+sex+imd+whr+nosmoking+nodrinking+sleeph+regular+dieth+road1+lden,family='gaussian', data1)
model8 <- glm(gmv ~ NO2_category+age+sex+imd+whr+nosmoking+nodrinking+sleeph+regular+dieth+road1+lden,family='gaussian', data1)

model9 <- glm(gmv ~ NO2_iqr*sex+age+imd+whr+nosmoking+nodrinking+sleeph+regular+dieth+road1+lden,family='gaussian', data1)
model10 <- glm(gmv ~ NO2_category*sex+age+imd+whr+nosmoking+nodrinking+sleeph+regular+dieth+road1+lden,family='gaussian', data1)
