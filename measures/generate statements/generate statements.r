 # title: generate causality propositions
# author: Ian Hussey (ian.hussey@ugent.be)
# license: GPLv3+

# Words are pre-paired, so number of generated propositions is lower.


# dependencies ------------------------------------------------------------


library(tidyverse)


# get data ----------------------------------------------------------------


setwd("~/git/causal-propositions/materials/generate statements/")

stimuli_df <- read.csv("stimuli.csv")
relation <- c("causes", "prevents")


# propositions ------------------------------------------------------------


# parse dataframe into vectors for clarity
stimulus_x <- as.vector(stimuli_df$stimulus_x)
stimulus_y <- as.vector(stimuli_df$stimulus_y)

# save all combinations of propositions to file
## internal * external * direction * cause/prevent
## 30 * 30 * 2 * 2 = 3600 propositions
propositions <- c()

for(i in seq_along(stimulus_x)) 
  for(j in seq_along(relation)) 
    propositions <- append(propositions, paste(stimulus_x[i], relation[j], stimulus_y[i], sep = " "))
for(i in seq_along(stimulus_x))
  for(j in seq_along(relation)) 
    propositions <- append(propositions, paste(stimulus_y[i], relation[j], stimulus_x[i], sep = " "))

# convert to data frame
propositions_df <- 
  as.data.frame(propositions) %>%
  rownames_to_column() %>%
  rename(identifier = rowname,  # unique identifier
         proposition = propositions) %>%
  mutate(for_parsing = proposition)  # parsed below

# parse columns for ease
propositions_df <- 
  separate(propositions_df, for_parsing, c("stimulus_1", "relation", "stimulus_2"), sep = " ")  # convert this one column into three

# write to disk
propositions_df %>% write.csv("statements - pre-paired.csv", row.names = FALSE)

