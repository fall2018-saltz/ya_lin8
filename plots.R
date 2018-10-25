
#to use the ggplot2 package
library(ggplot2)


#dependent variable overallCustSat is on y-axis
#all the dependent variables are on the x-axis


#hotelsize vs customer satisfaction
p1=ggplot(hData,aes(jitter(hotelSize),overallCustSat))+ geom_point()
p1

#the range is between 4-10
#there are few outliers

# check-in satisfaction vs customer satisfaction
p2=ggplot(hData,aes(jitter(checkInSat),overallCustSat))+ geom_point()
p2
#it's almost similar as above
#the range is between 4-10
#there are few outliers



#the plot has to be made to represent states
#hence create a map
#it should be based on the states

#hotelState vs overallCustSat
hData$hotelState <- tolower(hData$hotelState)
us=map_data("state")
p3=ggplot(hData, aes(map_id = hotelState))
p3=p3 + geom_map(map = us, aes(fill = factor(hData$overallCustSat)))
p3=p3+ expand_limits(x = us$long, y = us$lat) + coord_map()
p3=p3+ ggtitle("USA Map")
p3

#most of the states lie between 7-10
#only 2 states have a value of 10 being the strongest

#hotelClean vs customer satisfaction
p4=ggplot(hData,aes(jitter(hotelClean),overallCustSat))+geom_point()
p4

#spread too much
#many outliers
#hotelFriendly vs customer satisfaction
p5=ggplot(hData,aes(jitter(hotelFriendly),overallCustSat))+geom_point()
p5

#to usethe library of dplyr
#for data manipuations
#here to calculate the average and then draw the plot based on that
#this is because the gender is a categorical variable
library(dplyr)
genMean= hData %>% group_by(gender) %>% summarize(m1 = mean(overallCustSat))
genMean=as.data.frame(genMean)
#mean of gender vs customer satisfaction
p6=ggplot(genMean,aes(gender,m1)) 
p6=p6+geom_point()


#guestAge vs customer satisfaction
p7=ggplot(hData,aes(jitter(guestAge),overallCustSat))+ geom_point()
p7

#lengthOfStay vs customer satisfaction
p8=ggplot(hData,aes(jitter(lengthOfStay),overallCustSat))+ geom_point()
p8

#booking time vs customer satisfaction
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


