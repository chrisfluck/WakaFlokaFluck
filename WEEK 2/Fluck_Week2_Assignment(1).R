# With the data frame you created last week you will:

# Create a barplot for one numeric column, grouped by the character vector with 3 unique values
  # Add error bars with mean and standard deviation to the plot
  # Change the x and y labels and add a title
  # Export the plot as a PDF that is 4 inches wide and 7 inches tall.

# Create a scatter plot between two of your numeric columns.
  # Change the point shape and color to something NOT used in the example.
  # Change the x and y labels and add a title
  # Export the plot as a JPEG by using the "Export" button in the plotting pane.

# Upload both plots with the script used to create them to GitHub.
  # Follow the same file naming format as last week for the script.
  # Name plots as Lastname_barplot or Lastname_scatterplot. Save them to your "plots" folder.
unique.num <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
dec.num <- c(1.1,2.1,3.1,4.1,5.1,6.1,7.1,8.1,9.1,10.1,11.1,12.1,13.1,14.1,15.1)
unique.char<- c('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o')
group.char <- c('x','x','x','x','y','y','y','z','z','z','z','z','z','z','z')
rep.num <- c(5,5,5,5,5,10,10,10,10,10,15,15,15,15,15)
df <- as.data.frame(cbind(unique.char,group.char,unique.num,rep.num,dec.num))
df$uniqu.num <- as.numeric(as.character(df$unique.num))
df$rep.num <- as.numeric(as.character(df$rep.num))
df <- as.data.frame(cbind(unique.char,group.char,unique.num,rep.num,dec.num))
df$unique.num <- as.numeric(as.character(df$unique.num))
df$rep.num <- as.numeric(as.character(df$rep.num))
df$dec.num <- as.numeric(as.character(df$dec.num))
df.mean <- aggregate(df$rep.num ~df$group.char, FUN = "mean")
colnames(df.mean) <- c("Factor","Mean")
barplot(df.mean$Mean)
barplot(df.mean$Mean, names.arg = df.mean$Factor)
df.sd <- aggregate(df$rep.num ~df$group.char, FUN = "sd")
colnames(df.sd) <- c("Factor","StanDev")
b.plot <- barplot(df.mean$Mean, names.arg = df.mean$Factor)
arrows(b.plot, df.mean$Mean-df.sd$StanDev,
       b.plot, df.mean$Mean+df.sd$StanDev,angle=90,code=3)
b.plot <- barplot(df.mean$Mean, names.arg = df.mean$Factor, ylim = c(0,20))
arrows(b.plot, df.mean$Mean-df.sd$StanDev,
       b.plot, df.mean$Mean+df.sd$StanDev,angle=90,code=3)
title(xlab = "X axis", ylab = "Y axis")
plot(df$dec.num ~ df$unique.num, xlab = "x axis", ylab = "y axis")
plot(df$dec.num ~ df$unique.num, xlab = "x axis", ylab = "y axis", main = "My Favorite Scatter Plot", 
     cex.axis=0.8, cex.main = 0.5, cex.lab = 1.25, pch=69, col = "plum")
colors()
title(xlab = "X axis", ylab = "Y axis")
title(xlab = "X axis", ylab = "Y axis")