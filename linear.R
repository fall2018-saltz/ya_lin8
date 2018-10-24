
#to predict the model with customer satisfaction as dependent variabe
#here all the othr variables are dependent except freeText
#hence remove it from the model

m1=lm(overallCustSat~.-freeText,data = hData)
m1

#check the summary for r-square and adjusted r-square
summary(m1)
#r-square=multiple r-squared=0.9253
#adjusted r-squared: = 0.8768

#the most significant variables here are, checkInSat,hotelFriendly,guestAge,

#Coefficients:
                          #Estimate Std. Error t value Pr(>|t|)    
#(Intercept)              12.892011   1.580258   8.158 3.76e-11 ***
#hotelSize                -0.002515   0.002011  -1.251  0.21613    
#checkInSat               -0.387545   0.076549  -5.063 4.62e-06 ***
#hotelStateArizona        -1.568181   0.826311  -1.898  0.06279 .  
#hotelStateCalifornia     -0.608092   0.484001  -1.256  0.21410    
# hotelStateFlorida        -0.655244   0.498204  -1.315  0.19370    
# hotelStateGeorgia         0.164174   0.833753   0.197  0.84460    
# hotelStateHawaii         -1.253896   0.827348  -1.516  0.13516    
# hotelStateIowa           -0.818642   1.027786  -0.797  0.42904    
# hotelStateKansas         -0.148360   0.877507  -0.169  0.86634    
# hotelStateLouisiana      -0.582318   0.836363  -0.696  0.48910    
# hotelStateMaine          -2.476628   0.830708  -2.981  0.00422 ** 
#   hotelStateMassachusetts  -0.726847   0.670783  -1.084  0.28311    
# hotelStateMinnesota      -0.107605   0.657378  -0.164  0.87056    
# hotelStateMississippi    -0.903648   0.894057  -1.011  0.31642    
# hotelStateMissouri       -0.503915   0.596523  -0.845  0.40178    
# hotelStateNebraska       -0.148858   0.663111  -0.224  0.82318    
# hotelStateNew Hampshire   0.090087   0.925846   0.097  0.92283    
# hotelStateNew Jersey     -0.069655   0.582119  -0.120  0.90518    
# hotelStateNew York       -0.191731   0.476116  -0.403  0.68868    
# hotelStateNorth Carolina -0.167587   0.557267  -0.301  0.76472    
# hotelStateOhio           -0.014015   0.511414  -0.027  0.97823    
# hotelStateOklahoma       -0.464925   0.556227  -0.836  0.40673    
# hotelStatePennsylvania    0.023876   0.629762   0.038  0.96989    
# hotelStateSouth Carolina -0.663637   0.662833  -1.001  0.32096    
# hotelStateTennessee      -0.857295   0.579732  -1.479  0.14470    
# hotelStateTexas          -0.303019   0.511179  -0.593  0.55567    
# hotelStateUtah           -0.188682   0.546158  -0.345  0.73101    
# hotelStateVermont        -1.206239   0.847668  -1.423  0.16018    
# hotelStateVirginia       -0.066589   0.681837  -0.098  0.92254    
# hotelStateWest Virginia  -0.263542   0.817506  -0.322  0.74835    
# hotelStateWisconsin      -0.536010   0.921750  -0.582  0.56319    
# hotelClean               -0.014418   0.081484  -0.177  0.86018    
# hotelFriendly             1.449682   0.112228  12.917  < 2e-16 ***
#   genderMALE                0.100008   0.186329   0.537  0.59354    
# guestAge                 -0.189837   0.031595  -6.009 1.39e-07 ***
#   lengthOfStay             -0.573482   0.343426  -1.670  0.10042    
#whenBookedTrip           -0.017148   0.015661  -1.095  0.27813    
#---
#Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

#Residual standard error: 0.6823 on 57 degrees of freedom
  #(9905 observations deleted due to missingness)
#Multiple R-squared:  0.9253,	Adjusted R-squared:  0.8768 
#F-statistic: 19.09 on 37 and 57 DF,  p-value: < 2.2e-16



#I am taking the checkInSat as the most important independent significnt variable 
linmod_hotelSize <- lm(overallCustSat~hotelSize,data=hData)
summary(linmod_hotelSize)
# Estimate Std. Error t value Pr(>|t|)
# (Intercept) 7.0984171  0.0306494 231.600   <2e-16 ***
# hotelSize   0.0001120  0.0001934   0.579    0.563   

# Multiple R-squared:  3.354e-05,	Adjusted R-squared:  -6.648e-05

#comparing linear and multiple regressions, we see that the value of r-squared reduces significantly
#when applying linear regression. Hence, multiple regression is a more accurate method for predicting
#customer satisfaction














