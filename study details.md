# Normed causality statements 

Author: Ian Hussey (ian.hussey@ugent.be)

Licenses: 

​	Code: GPLv3+

​	Other materials (data, stimuli, text): CC-BY 4.0

## Open Science Framework project

Data, analyses, etc. will be made available on OSF at http://osf.io/bvzvy 

## Overview and purpose

Survey to produce propositions that are normatively unambiguous causal statements that are directionally irreversable. That is, statements where participants agree that: 

1. X causes Y 
2. Y does not cause X
3. X does not prevent Y
4. Y does not prevent X

A second set of normatively unambiguous preventative statements that are directionally irreversable will also be created, where participants agree that:

1. X prevents Y 
2. Y does not prevent X
3. X does not cause Y
4. Y does not cause X

## Design

### Sample

100 participants collected on prolific.ac paid £1 each for c.10 mins (assuming 5 seconds per rating). This will provide 50 ratings of each statement.

Inclusion criteria: English as a first language, age 18-65, >90% rating on prolific.

### Stimuli

64 candidate causal and preventative statements (32 each) were created by the researcher. These were created with the intention that each is either unambiguous causal or preventative, and also cannot not be reversed in some fashion to create a valid statement. For example, individuals are likely to agree that "death causes grief", while also being likely to disagree that "grief causes death", "death prevents grief" or "grief prevents death". However, statements such as "hunger causes eating" were not included, as individuals may be likely to also agree with the statement that "eating prevents hunger", providing a degree of reversability.

Combinations of x and y stimuli into statements intially done using R script. This file was then fleshed out to include trial types etc manually in excel for processing.

### Measures

Each statement will be rated using a 1 to 5 likert scale (strongly disagree, somewhat disagree, neither disagree nor agree, somwhat agree, strongly agree). Age and gender are also collected.

For each stimulus pair (e.g., death and grief), there are four rated statements (death causes grief, grief causes death, death prevents grief, grief prevents death). 64 stimuli pairs = 256 statements.

To avoid participant fatigue effects, the 256 statements are divided randomly into two groups of 128 (a and b). Each participant will rate only one group of stimuli (c.10 mins at 5 seconds per statement). 

## Hypotheses

No specific hypotheses, given we are attempting to norm stimuli. We generally expect some statements to be seen as unambiguously causal and others as unambiguously preventative, given that candidate items were selected to fit these criteria.

## Analytic strategy

### Exclusions

#### Incomplete data

Participants with incomplete data will be excluded from the analysis.

#### Catch trials

Data from a participant is excluded if they have any incorrect answers on the catch trials.

- Catch 1: Please respond somewhat agree (4)
- Catch 2: Please respond somewhat agree (4)
- Catch 3: Please respond somewhat disagree (2)
- Catch 4: Please respond somewhat disagree (2)

#### Outliers

Total time is recorded for the ratings as a whole (i.e., time to rate the 128 statements). Outliers are defined as `mean time ± 2.5 SD` and will be excluded from the analysis.

### Analyses

For each group of four statements that share stimuli, statement quality (uni-directionality and non-reversability) will be quantified as effect size (standardized difference) between ratings of a given statement and the pooled ratings of the other three statements. This operationalises the description in the overview and purpose.

Statements with the highest effect sizes in each set of four will then be extracted. That is, for each set of stimulus X and stimulus Y, the statement with the highest unidirectionality and irreversibility will be extracted. Selected statements will then be ranked stimulus sets. 
