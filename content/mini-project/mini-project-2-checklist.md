# Milestone 2 Criteria (30 pts)

## Task 1 (15 pts)

- [ ] **Task 1.1**: Write out the **4** research quesstions you defined in Milestone 1 (2.5 pts)
- [ ] **Task 1.2**: Choose **one** task from "summarizing" category and **one** other task from "graphing" category for _each_ of your research questions (10 pts)
	- You should have 2 tasks done for each research question (total of 8)
	- Summarizing:
		- [ ] For one of the categorical variables in your data, compute the:
			- [ ] range
			- [ ] mean
			- [ ] **two** other summary statistics
		- [ ] Compute the number of observations for at least **one** of your categorical variables
			- Do **not** use the function `table()`!
		- [ ] Create a categorical variable with **3** or more groups from an existing numerical variable.
			- You can use this new variable in the other tasks!
			- *An example: age in years into "child, teen, adult, senior"*
		- [ ] Based on **two** categorical variables, calculate **two** summary statistics of your choosing
	- Graphing:
		- [ ] Create a graph out of summarized variables that has at least **two** `geom` layers
		- [ ] Create a graph of your choosing:
			- [ ] Make one of the axes logarithmic
			- [ ] Format the axes labels so that they are "pretty" or easier to read
		- [ ] Make a graph where it makes sense to customize the alpha transparency
		- [ ] Create **3** histograms out of summarized variables
			- [ ] Each histogram having different sized bins
			- [ ] Pick the "best" one and explain why it is the best
- [ ] **Task 1.3**: Answer the following questions (2.5 pts)
	- [ ] How much closer are you to answering your research questions? 
	- [ ] Think about what aspects of your research questions remain unclear
	- [ ] Can your research questions be refined, now that you've investigated your data a bit more?
	- [ ] Which research questions are yielding interesting results?

## Task 2 (12.5 pts)

- [ ] **Task 2.1**: Can you identify if your data is tidy or untidy?  (2.5 pts)
	- Go through all your columns, or if you have >8 variables, just pick 8, and 
		- [ ] Explain whether the data is untidy or tidy 
- [ ] **Task 2.2**: Now, if your data is tidy, untidy it! If it's untidy, then tidy it! (5 pts)
	- [ ] Be sure to explain your reasoning for this task. Show us the "before" and "after" 
- [ ] **Task 2.3**: Based on your interest, and your analyses, pick **2** of the 4 research questions to continue your analysis in milestone 3 (5 pts)
	- [ ] Explain your decisions for both questions
	- [ ] Try to choose a version of your data that you think will be appropriate to answer these 2 questions in milestone 3. Use between 4 and 8 functions that we've covered so far (i.e. by filtering, cleaning, tidy'ing, dropping irrelvant columns, etc.). Save this tibble as an `.RDS` object with the function `saveRDS()`. 

## Reproducibility, Readability, Repo Organization (2.5 pts)

- Reproducibility
	- [ ] Can the TAs run your code without any errors?
	- [ ] Can the TAs knit without any errors?
- Readability
	- [ ] Did you knit your `.Rmd` to a GitHub-friendly format? (e.g. `md_document`, `github_document`)
	- [ ] Did you push this GitHub-friendly report to your repository?
	- [ ] Do you have proper spelling and grammar?
- Repo Organization
	- [ ] Did you remove all duplicate files resulting from merge conflicts?
	- [ ] Are all the files in their corresponding milestone directories?
	- [ ] Did you update your README as the project has progressed?
