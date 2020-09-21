# Making Worksheets

This is meant to help you produce autograded worksheets.

## Finding content

We're scraping content from the (deprecated) guidebook. [Repo](https://github.com/UBC-STAT/stat-545-guidebook); [guidebook](https://stat545guidebook.netlify.app/)

Also the worksheets that the guidebook links to.

As for drawing boundaries on topics, try to use the topic schedule on [Issue 25](https://github.com/UBC-STAT/stat545.stat.ubc.ca/issues/25). Keep in mind to line up the worksheet with the correct week -- Worksheet 1-A is the only worksheet spanning two weeks (at least, in STAT 545A).

## Making a new worksheet

1. Make a new folder in `content/source/` that uses the following naming convention: for example, the folder for the 5th worksheet in STAT 545A should be named `worksheet_05a`.
    - FYI: the worksheet name needs to appear in `content/nbgrader_config.py` -- the parameter specification for nbgrader. I think I've added all of the worksheets.
2. Make a new _jupyter notebook_ file (**not jupyterlab**) (under an R kernel, not python) in said folder. I like to use the same naming convention, but nbgrader won't complain.
3. In jupyter, open the new worksheet file, and "make it an assignment file" by clicking "View > Cell Toolbar > Create Assignment". Each cell should now allow you to select nbgrader metadata (more on that later).

You're all set to start writing the assignment!

Note:

- If you want to edit the file in RStudio, I get it. You'll have to install JupyText if it's not already installed. I'm not so familiar with it, but here's what I do know:
    - With Jupytext, you're able to open an Rmd file within jupyter. You can even edit the file and save it, and the file will retain its Rmd status.
    - If you "make the Rmd file an assignment file" within jupyter by following Step 3 above, and proceed to specify the nbgrader metadata, the *metadata will not save* (from my experience, at least).
    - You can save an Rmd file as an ipynb file: open the Rmd in jupyter (possible thanks to JupyText), and save the worksheet as a different file. It should default to an .ipynb -- you can then "Create Assignment" and start filling in the nbgrader metadata, and the metadata will save along with file saving. 

## Writing a worksheet to comply with nbgrader

Here's the general idea behind writing an autograded question. It might look something like this:

-------

**Question 1.1**

Store `5` into the variable named `five`.

```
# youranswer
### BEGIN SOLUTION
five <- 5
### END SOLUTION
```

```
test_that("Answer check", {
    expect_identical(digest(five), "5e338704a8e069ebd8b38ca71991cf94")
})
print("success!")
```

--------


Here are the specifics. nbgrader will complain if you don't do these things. (Note: to better understand these nuances, it might help if you take a look at the general idea behind what the next section has to say, on converting a source worksheet to a student-facing worksheet.)

- Every single cell (including markdown cells!) need to be assigned nbgrader metadata. You can do this by selecting the nbgrader cell type in the drop-down menu in the upper-right corner of each cell.
    - "Read-only": Most cells. These are cells that you don't want students to be able to modify.
    - "Autograder answer": this is where the students will write their code to answer your question. As a developer, you need to write the answers sandwiched between the lines `### BEGIN SOLUTION` and `### END SOLUTION` (when generating the student version, nbgrader will remove these lines and everything between it).
    - "Autograder test": this is where students can check to see whether they have the correct answer. It should immediately follow an "autograder answer" cell. If this code chunk runs error-free, nbgrader interprets this as being a correct answer. So, write tests so that an error is thrown if they are incorrect! Please use the `testthat` package.
    - There are also "manually graded" options. Same idea as auotmated, but this must happen in a markdown chunk, not a code chunk.
- When specifying a cell as "autograded test", you also need to indicate how many points it's worth (you should see it pop up). Let's all default to making everything worth 1 point.
- When defining a cell with a certain nbgrader type, that cell will be given a unique cell ID. This ID can be anything, but **the ID must be unique** -- this means, please don't copy and paste a cell after defining its nbgrader type! I like to leave the ID as the default.
- There **cannot** be a YAML header in the ipynb document (it'll throw an error when generating the assignment)

Still confused about things like `digest()`? We're getting there...

## Launching the Assignment

The **general idea** behind producing a worksheet for the students:

1. As an instructor, you write a worksheet *with* all the solutions.
2. You use nbgrader to produce a student-facing version of the worksheet. Yes, the solutions are removed in this process.
3. The "student version" of the worksheet (an .ipynb file) is almost entirely "read and execute only", except for the cells where we ask them to write some code (i.e., provide an answer).

Here are the details of Step 2, courtesy [Tiffany Timbers' instructions](https://github.com/ttimbers/nbgrader_r_demo#the-demo-how-i-created-it-and-ran-it):

**2A**: Navigate to the `worksheets` folder in the `stat-545-instructor` repo, and run the following code in your shell to "refresh the exchange directory" (whatever that means):

```
# remove existing directory, so we can start fresh for demo purposes
rm -rf /tmp/exchange

# create the exchange directory, with write permissions for everyone
mkdir /tmp/exchange
chmod ugo+rw /tmp/exchange
```

**2B**: add the worksheet (say worksheet_05a) to the `database.db` file by running: 

```
db assignment add worksheet_05a
```

**2C**: generate the student version of (say) worksheet_05a by running:

```
nbgrader generate_assignment --force worksheet_05a
```

**2D**: Take a look in the `worksheets/release/` folder -- your outputted assignment should be there!

**2E**: Add a new assignment to canvas for this worksheet (you'll have to click on the "More Options" button when you go to create an assignment):

- Under the description, write `Please upload your Worksheet 5-A file here -- it should be a .ipynb file named worksheet_05a.`
- Points: use the number of questions they need to get correct in order to get full points. 
- Change the "submission type" to "File Uploads"; then, click "Restrict Upload File Types", and enter `ipynb`
- Make the due date Friday at 11:59pm.
- Click "Save and Publish". 


## Tips for writing autograded tests

Here are tips when writing the source version of the worksheet.

- Be specific about what variable name students should store an answer in, when you're asking them a question.
    - There's no additional magic that nbgrader brings in terms of testing R code, compared to what you'd write with (say) the `testthat` package (which, please use, by the way). 
- Be clear when an autograded question starts. Let's use the header **Question X** to indicate that a question is being asked. 
- Use `expect_identical()` cautiously: 
    - Compare after coercing to a set data type. Maybe the answer is `5`, but someone ended up with `5L` (integer) -- these are not identical.
    - If comparing a double precision number, be mindful that someone might be off by 1e-16 due to version differences, and round the answer to a reasonable length before comparing answers.
    - The more attributes an object has, the more opportunity there are for objects to differ. Case in point: a tibble is different when it's grouped -- if grouping and other attributes don't matter to you, best to strip these attributes -- perhaps the best way is with `unclass()`. 
- Sometimes writing a test makes the answer blaringly obvious. Case in point: asking "what's the probability of XYZ?", and testing `expect_equal(my_answer, 0.75)` is a dead giveaway. Instead, hide the answer like so:
    1. On your own, obtain an encrypted version of the answer using the `digest::digest()` function. For example, `0.75` digested is the character `"00f3fa27c01aee5e7633e06a130c827e"`.
    2. Write the test by comparing digested versions: `expect_identical(digest(my_answer), "00f3fa27c01aee5e7633e06a130c827e")`
- Because we're calling on functions from the `testthat` and `digest` packages, it's best to load these in a cell near the top in a read-only R chunk.
- Ensure the document is able to run error-free when ran from top to bottom.
