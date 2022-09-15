# Now it is time to create your own data frame using the tools we have learned this week.
# First, resave this script as: your last name_Week1_Assignment
  # e.g. mine would be Wilson_Week1_Assignemnt


# Create 3 numeric vectors and 2 character vectors that are each 15 values in length with the following structures:
  # One character vector with all unique values
  # One character vector with exactly 3 unique values
  # One numeric vector with all unique values
  # One numeric vector with some repeated values (number of your choosing)
  # One numeric vector with some decimal values (of your choosing)

# Bind the vectors into a single data frame, rename the columns, and make the character vector with unique values the row names.

# Remove the character vector with unique values from the data frame.

# Add 1 row with unique numeric values to the data frame.

# Export the data frame as a .csv file 

# Generate summary statistics of your data frame and copy them as text into your script under a new section heading.

# Upload your script and your .csv file to Blackboard

a <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
b <- c(1.1,2.1,3.1,4.1,5.1,6.1,7.1,8.1,9.1,10.1,11.1,12.1,13.1,14.1,15.1)
c <- C('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o')
c <- c('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o')#why doubled? AHHH..got it now. just delete the other line next time.
d <- c('x','y','z','p','p','p','p','p','p','p','p','p','p','p','p')#more than three unique values...
e <- c(5,5,5,5,5,10,10,10,10,10,15,15,15,15,15)
data <- cbind(a,b,c,d,e)
df <- as.data.frame(data)
df
colnames(df) <- c("Lets","Rewild","Smith","Lawn","Please")
df
row.names(df) <- df$Smith
df
df[,-3] #this only prints with the column absent, it does not create a new object. You need <- for that.
binary.solo <- c(16,17,18,19,20,21,22,23,24,25,26,27,28,29,30) #this is a column, not a row...
new.df <- cbind(df,binary.solo)#it should be a hint that you had to use cbind() instead of rbind() for this to work.
new.df
df.a <- df[,-3]
View(new.df)
new.df <- cbind(df.a,binary.solo)
View(new.df)
setwd("D:\R Assignments")
setwd("D:/R Assignments")#this is not the right file path.
getwd()
write.csv(new.df,file = "week1.csv")
read.dcf <- read.csv('week1.csv')
View(read.dcf)
read.df <- read.csv('week1.csv')
read.df

#where are the summary statistics??