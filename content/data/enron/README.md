# Enron Emails Dataset (Subsetted)

Database of 270,087 Enron emails, taken from the May 7, 2015 version of the dataset. Data was extracted [from CMU](https://www.cs.cmu.edu/~enron/).

## Columns of the dataset

There are three columns in `enron.csv`:

- `person`: The person associated with the email.
- `mail_num`: Identifier for each person's email.
- `email`: Each entry is a line in an email, including the email's metadata (like subject, who it was sent to, etc.)

## Reproducing the dataset

To reproduce the dataset `enron.csv`:

1. Download and unzip the file from the above CMU website. 
2. Ensure the resulting unzipped folder is called `maildir`.
3. Place the R script, `enron.R`, beside (in the same directory) as `maildir`.
4. Run the R script.

Dependencies: R packages `tidyverse` and `fs`. 

**Main idea of how the dataset was created**

The zip file held folders corresponding to people. Each person's folder had many other folders, but I only selected the folders named `_sent_mail`, which themselves contained a number of files containing individual emails. I read in all emails in all `_sent_mail` folders. I then subsetted to the first 100 emails for each person (if more than 100 existed). 

