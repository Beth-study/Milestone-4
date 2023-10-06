#Clean data of NYPD_Arrest
NYPD_Arrest <- read.csv("NYPD_Arrest.csv",na="-")
 NYPD_Arrest <- na.omit(NYPD_Arrest)
 library(dplyr)
 NYPD_Arrest <- NYPD_Arrest %>%
   rename( XCoordinates = X_COORD_CD, YCoordinates = Y_COORD_CD, Race = PERP_RACE, Age = AGE_GROUP)
 
 NYPD_Arrest2 <- subset(NYPD_Arrest, XCoordinates > 1000000)
  NYPD_Arrest2
 hist(NYPD_Arrest2$XCoordinates, main = "X-Coordinates of Arrest", xlab = "X-axis Coordinates", ylab = "Arrests", col = "blue", border = "red")
 
 NYPD_Arrest2 <- subset(NYPD_Arrest, YCoordinates > 100000)
  NYPD_Arrest2
 hist(NYPD_Arrest2$YCoordinates, main = "Y-Coordinates of Arrest", xlab = "Y-axis Coordinates", ylab = "Arrests", col = "green", border = "yellow")
 
 