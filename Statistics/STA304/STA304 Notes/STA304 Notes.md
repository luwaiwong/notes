#uoft/sta304 

Notes for [[STA304]]

---
# Table of Contents
[[STA304 Textbook - Samping Theory & Practice.pdf]]
[[#Week 1]]
	[[#Survey Design]]
	[[#Populations vs. Sample]]
	[[#Bias & Error]]
	[[#R & R Studio]]

---
# Notes

## Week 1
> Slides
> 	[[STA304 Week 1 Slides.pdf]]

### Survey Design
Tips on designing a survey
- Avoid leading questions
	- Questions which push/guilt survey taker to answer a certain way, 
	- e.g. "How bad do you think the new policies are"
- Avoid double barrel questions
	- Questions which contain multiple parts/questions 
	- e.g. "How do you feel about the policy and how did you learn about it"
- Avoid using niche jargon
- Only ask what you need to know about
- Try to keep questions neutral
- When designing surveys, have a small group of people try the survey and let you know their thoughts
	- Helps to find typos/ambiguities
	- Refine survey and make it more clear
	- Check that answer you get match your expectation
		- If you have "Other" category that is selected a lot, maybe you need to expand options

### Populations vs. Sample
A [[Population]] is the entire group that we want to study/make an inference about
There are 3 populations
- Target Population
	- The entire group that a researcher intends to study
	- The broader group that we want our findings to apply to
- Frame Population
	- The list from which our [[Sample]] is actually drawn from
	- Is a practical representation of the target popluation
	- May not fully capture everyone in target, due to limitations in access or records
- Sample Population
	- The group selected from the Frame Population to be in the [[Sample]]
	- The actual group which we collect data from]]

A [[Sample]] is the group which we collect data on, the members of the population of which we have data 
- A sample is a subset of the population

### Bias & Error
[[Selection Bias]] is when individuals in a study/analysis are not representative of the target population
Possible Causes
- Non-Random Sampling: Choosing participants based on certain characteristics
- Loss to follow up: In long studies, if certain groups drop out of the study at higher rates than other, may lead to bias
- Exclusion of certain groups

[[Measurement Error]] is the difference between the true value of a quantity and the value actually measured
Two types
- Systematic Error/Bias ([[Measurement Bias]])
- Random Error ([[Precision Error]])

[[Measurement Bias]] is a type of error which consistently skews measurements in one direction, and is reproducible
Factors which cause bias
- Faulty equipment calibration
- Biased measurement process
- Incorrect measurement techniques

> Notes
> 	Measurement bias can often be identified and corrected

[[Precision Error]] is error which occurs unpredictably 
- Varies in magnitude and direction with each measurement
- Cased by uncontrollable factors
	- Slight variations in environment
	- Small fluctuations in instruments
	- Minor inconsistencies in technique
- Can be reduced by averaging multiple measurements

[[Sampling Error]] is error caused because a sample is not fully representative of the entire population
- There is always some level of variability between sample and population
- Is random and arise due to chance, difference samples drawn from same population could yield difference results
- Can be reduced by increasing sample size (usually infeasible)

[[Non-Sampling Error]] is error from sample, but not due to the variability between sample and population
- Arise due to issues like improper data collection methods, mismeasurement, respondent bias, data processing mistakes
- Often systematic (bias results in one direction)
- Can be minimized with careful survey design
- More difficult to correct than sampling bias

### R & R Studio
The [[R Programming Language]] is an open source programming language used for statistics and modeling
	R Studio is an editor for R

Types in R
- Integer: `int`
- Double: `dbl`
- Logical: `lgl` 
	- True or False values
	- In R is equal to `TRUE` or `FALSE`
- Character: `chr`
- Factor: `fct`
	- Looks like a character, but only takes values from pre-specified list
- Vector:
	- A vector is any list of values
- Data frame:
	- A list of vectors
	- These vectors can be different types
	- Can be imagined as a database/spreadsheet, where each column is of one vector type, each row is one "observation" with the data of the different vectors


``` r
# Basic R Syntax 
# Saving Variables/objects 
name <- object

# comparisons are typical comparisons 
==, !=, <, <=, >, >=, !, &, |

# Vectors 
# "c()" combines elements into a vector 
vector <- c(1, 2, 3, 4, 5)

# Use "is" to check data type of a vector 
is.numeric(vector) # returns true
is.character(vector) # returns false

# Install package
install.packages("packagename") # only needs to be run one time
library("packagename") # Needs to be run in every project that uses package

# Pipes are used to use output of functions, as input for other functions
# Pipe is often read as "and then"
output_function %>%
	input_function

# Check info of data
glimpse(data) # Gives number of rows and columns of data
head(data) # Shows what top couple rows of data looks like 


# Loding packages and using them
# Common Tidyverse Functions
install.packages("packagename") # only needs to be run one time
library("packagename") # Needs to be run in every project that uses package

# Tidyverse functions
read_csv(file="filename") # result is called "tibble"
filter(variable condition) # obvious
select(variables) # Returns data with only selected variables
mutate(new_variable_name = value that you want that variable to be) # Creates new variables
case_when(case1 ~ variable value, case2 ~ variable value2) # Creates new variables, but allows you to set different values for different cases
arrange(variable) # Sort by that variable
arrange(desc(variable)) # If you want to sort decending
``` 

## Week 2
> Slides
> 	[[STA304 Week 2 Slides.pdf]]

### Sampling

[[Sampling]] is the process of selecting a subset/sample from a larger population or data set, to make inferences or draw conclusions about that population
- It is often impractical or impossible to collect data from every individual
- Thus we need to *sample* a smaller, manageable group
- Two categories of sampling
	- Non-Probability based
	- Probability based

Non-Probability Based Sampling
- Selection process is not random
- Some individuals may have no chance of being selected
- Not necessarily representative of population, can lead to bias
- Quicker and easier to conduct
Types
- Convenience Sampling: Selected based on ease of access
- Judgemental or Purposive Sampling: Researcher selected individuals base on their judgement
- Quota: Sample selected to meet specific quotas, but without random selection
- Snowball: Initial subjects are chosen, and they help identify others

Probability Based Sampling
- Where every individual in the population has a known, non-zero chance of being selected
- Helps ensure sample is representative
- Produces more reliable, unbiased results
Types
- Simple Random Sampling: Every individual has equal chance
- Systematic Sampling: Sample selected by choosing every "kth" individual from list
- Stratified Sampling: Population divided into subgroups, individual selected from each subgroup
- Cluster Sampling
	- Population is divided into cluster, entire clusters randomly selected

