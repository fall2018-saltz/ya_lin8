
#installing llibrary for ggplot and dplyr
library(ggplot2)


#customer satisfaction will be plotted on the y-axis as it is the dependent variable
#jitter() adds a small amount of noise to the numeric vector
#plotting hotelsize vs customer satisfaction
p1=ggplot(hData,aes(jitter(hotelSize),overallCustSat))+ geom_point()
p1

#plotting check-in satisfaction vs customer satisfaction
p2=ggplot(hData,aes(jitter(checkInSat),overallCustSat))+ geom_point()
p2

p3=ggplot(hData,aes(hotelState,overallCustSat))+geom_point()
p3

#plotting hotelClean vs customer satisfaction
p4=ggplot(hData,aes(jitter(hotelClean),overallCustSat))+geom_point()
p4

#plotting hotelFriendly vs customer satisfaction
p5=ggplot(hData,aes(jitter(hotelFriendly),overallCustSat))+geom_point()
p5


p6=ggplot(hData,aes(gender,overallCustSat))+ geom_point()
p6

#plotting guestAge vs customer satisfaction
biplot7=ggplot(hData,aes(jitter(guestAge),overallCustSat))+ geom_point()
p7

#plotting lengthOfStay vs customer satisfaction
p8=ggplot(hData,aes(jitter(lengthOfStay),overallCustSat))+ geom_point()
p8

#plotting booking time vs customer satisfaction
p9=ggplot(hData,aes(jitter(whenBookedTrip),overallCustSat))+ geom_point()
p9

# plot1 - most of the observations lie in the 5-10 range but there are a few outliers 
# plot2 -  most of the observations again lie in the 5-10 range with a few outliers 
# plot3 - the states on an average have similar average values but California, Pennsylvania and West 
# Virginia have slightly higher averages
# plot4 - there are more outliers here in the hotel clean variable and it is more spread out
# plot5 - the customer satisfaction is seen increasing as the friendliness score increases
# plot6 - males on an average have a marginally higher satisfaction rating than women
# plot7 - most guests lie in the 40-60 age group with a few outliers
# plot8 - the average length of stay is 1-4 nights 
# plot9 - there is no specific pattern to the data suggesting that it is not an accurate predictor


