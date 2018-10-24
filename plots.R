
#installing llibrary for ggplot and dplyr
library(ggplot2)
library(dplyr)

#customer satisfaction will be plotted on the y-axis as it is the dependent variable
#jitter() adds a small amount of noise to the numeric vector
#plotting hotelsize vs customer satisfaction
plot1=ggplot(hData,aes(jitter(hotelSize),overallCustSat))
biplot1=biplot1 + geom_point()

#plotting check-in satisfaction vs customer satisfaction
biplot2=ggplot(hData,aes(jitter(checkInSat),overallCustSat))
biplot2=biplot2 + geom_point()

#converting all state names to lower case because R cannot process capital letters
hData$hotelState=tolower(hData$hotelState)
#turning data from the maps package into a data frame suitable for plotting with ggplot2
us=map_data("state")

#initializing  a ggplot object and passing dataset as the input data with map ID as hotelState
biplot3=ggplot(hData, aes(map_id = hotelState))
#creating a map visualization
biplot3=biplot3 + geom_map(map = us, aes(fill = factor(hData$overallCustSat)))
#defining the x and y axes values of the map
#coord_map() handles the distortion and aspect ratio of the map
biplot3=biplot3 + expand_limits(x = us$long, y = us$lat) + coord_map()
#ggtitle() gives a title to the map
biplot3=biplot3 + ggtitle("Map of color coded USA")
biplot3

#plotting hotelClean vs customer satisfaction
biplot4=ggplot(hData,aes(jitter(hotelClean),overallCustSat))
biplot4=biplot4 + geom_point()

#plotting hotelFriendly vs customer satisfaction
biplot5=ggplot(hData,aes(jitter(hotelFriendly),overallCustSat))
biplot5=biplot5 + geom_point()

#calculating the average satisfaction per gender using dplyr and then plotting the mean using geom_point()
gendercount=hData %>% group_by(gender) %>% summarize(mean1 = mean(overallCustSat))
gendercount=as.data.frame(gendercount)
#plotting average satisfaction per gender vs customer satisfaction
biplot6=ggplot(gendercount,aes(gender,mean1)) 
biplot6=biplot6 + geom_point()

#plotting guestAge vs customer satisfaction
biplot7=ggplot(hData,aes(jitter(guestAge),overallCustSat))
biplot7=biplot7 + geom_point()

#plotting lengthOfStay vs customer satisfaction
biplot8=ggplot(hData,aes(jitter(lengthOfStay),overallCustSat))
biplot8=biplot8 + geom_point()

#plotting booking time vs customer satisfaction
biplot9=ggplot(hData,aes(jitter(whenBookedTrip),overallCustSat))
biplot9=biplot9 + geom_point()

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

