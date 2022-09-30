# Look at the plot and model results for our Dryad data in the tutorial. Part 1: Without knowing which points represent which groups, 
  # give one explanation for why these data might be difficult to draw spatial inferences about genes.(3 points)
  # Part 2: Despite the drawbacks, give the result or interpretation that you feel most confident in (3 points), and EXPLAIN WHY (4 points).

# There is no background for the data to lay on to see the spatial difference #What do you mean by "data to lay on"?

# For your scripting assignment we will use the "ge_data" data frame found in the "stability" package.
  # Install the "stability" package, load it into your R environment, and use the data() function to load the "ge_data". (2 points)

# Create two linear models for Yield Response: one related to the Environment and one to the Genotype. (2 points each)
  # 'Yield Response' in this dataset is a measure of phenotype expression.
  # Hint: Look at the help file for this dataset.


# Test the significance of both models and look at the model summary. (3 points each)
  # Which model is a better fit to explain the yield response, and WHY? (6 points)
  # Hint: Does one model seem more likely to be over-fitted?

# Gen is the better model do to the P value being lower than the P value for Env. #But the p-value is lower for Env and the r-squared is higher

# Which environment would be your very WORST choice for generating a strong yield response? (2 points)

# Env would be the worst due to how large the P value is. #does not answer the question.

install.packages('stability')
library(stability)
setwd("C:/GitHub/WakaFlokaFluck/Week4")
data("ge_data")
data <- ge_data
head(data)
mod.env <- lm(data$Yield ~ data$Env)
mod.env <- lm(Yield ~ Env, data = ge_data)
enova(mod.env)
anova(mod.env)
summary(mod.env)
mod.gen <- lm(Yield ~ Gen, data = ge_data)
anova(mod.gen)
summary(mod.gen)
