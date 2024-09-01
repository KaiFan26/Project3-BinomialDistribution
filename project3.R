##### R Project 3: Binomial Distribution
##### Name: Hanel Vujic
##### Version Number: 3



### Part 1
## (C1): Store the size of your distribution

total_trials <- 26
##total_trials (outputs 26)


## (C2) Store your probability of successes

success_prob <- 0.92
##success_prob (outputs 0.92)

## (C3) Create a vector from 0 through the number of Bernoulli Trials of your distribution.

number_of_successes <- 0:total_trials
#number_of_successes

## (C4) Find Binomial Probabilities.

point_probabilities <- dbinom(number_of_successes, total_trials, success_prob)
point_probabilities ##(outputs all probabilities)

## (C5) Create a barplot.

barplot(height = point_probabilities, names.arg = number_of_successes, xlab = "Success Number", ylab = "PMF Probabilities", ylim = c(0, 0.33))


### Part 1 Questions
## (Q6) Describe the barplot.

# X-value for the highest bar: 24

# Is the highest bar in the center or somewhat off to the side of the graph?
#(ANSWER)
#In terms of the entire graph, it's off to the side. In terms of the distribution
#from values 19 to 26, it's more in the center.


# Do all of the bars go to the same height, or are they all different?
#(ANSWER)
#All of the bars have different heights among each other.



# Code for calculating P(X <= (see PDF for value))

pbinom(22, total_trials, success_prob, lower.tail = TRUE)


# Answer from above code:
# ANSWER: 0.1501382

# If you had to shade your barplot from Part 1 corresponding to the calculation you just made, what part(s) of the barplot would be shaded? (You don't actually have to shade your graph, just describe it in words.)
# (ANSWER)
# I would shade starting from the bar of X = 22 and shade the bars to the left of them.




## (Q7) Expected Value of Distribution?
# Code: 
#dbinom(12, total_trials, success_prob)
sum(point_probabilities * number_of_successes)


# Result from Code:
#(ANSWER): 23.92


## (Q8) Standard Deviation of Distribution?
# Code:
standardDev <- sqrt(sum((number_of_successes - mean(number_of_successes))^2/(length(number_of_successes)-1)))
standardDev
sNewStandard <- sd(number_of_successes)
sNewStandard
# Result from Code:
#(ANSWER): 7.937254





### Part 2
## (C9) Random Sampling

set.seed(3425)
sample_values <- rbinom(92, total_trials, success_prob)
sample_values


### Part 2 Questions
## (Q10) Mean of random sample?
# Code:
mean(sample_values)


# Result from Code:
# (ANSWER): 1.956522


## (Q11) Standard Deviation of random sample?
# Code:
sd(sample_values)


# Result from Code:
# (ANSWER): 1.108539




### Additional Questions
## (Q12) 
## Compare the expected value from Q7 and the sample mean from Q10.  Are they close in value?
# Answer: They are really close in value.

## Compare the standard deviations from Q8 and Q11.  Are they close in value?
# Answer: The standard deviations on the other hand were not close in value at all.

## Why do you think the values aren't exactly the same?
# Answer: I think the difference in one having 22 trials while the other having 92, as well as the first test having 
# no fixed seed while this one did greatly contributed to the difference between the two standard deviation differences.







## (Q13) Share an example of a real life scenario that uses the Binomial Distribution.
# Example:
# (ANSWER): We'll have 30 days where we go around UIC and ask 5 students what their major is, with a 0.59 probability that
# they are going to be a computer science major.


# Explain how your example meets the criteria for a Binomial Distribution
# Criteria 1: n Bernoulli Trials
# Criteria 2: each trial is independent
# Criteria 3: the probability of success is constant

#(ANSWER): It meets criteria 1 because we have n = 30 trials, and it meets criteria 2 because all the students
# are randomly chosen and asked, with whether any having relation to each other up in the air.
# You could say there is a seed set in this problem by having the probability always 0.59 no matter who you ask.

