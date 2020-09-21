# Autograding Worksheets

This guide is meant to help you go from students' worksheet submissions, to a grade for them on canvas.

**Prerequisites**: This assumes that the instructions under "Launching the Assignment" in the `making_worksheets.md` file have been followed correctly. 

## Step 1: Gather Submissions

1. After the deadline, download student submissions from canvas.
2. Move each student's submission to their own folder in the `stat-545-instructor` repo:
    - For student with ID `bitdiddle`, their `worksheet_05a.ipynb` file should go in the folder `worksheets/submitted/bitdiddle/worksheet_05a/worsheet_05a.ipynb`
    - **we need a script that will do this for us**
    - **each student needs their own ID recognized by nbgrader -- still need to do this**
        - I think the command line option [`nbgrader db student add`](https://nbgrader.readthedocs.io/en/stable/command_line_tools/nbgrader-db-student-add.html) will add one student to `database.db`, and I also believe the students need to appear in `nbgrader_config.py`, but that's all I know so far. 

## Step 2: Run the autograder

**Still need to find a way to do this so that students can't harm our computer with malicious code**

1. Use the command line to navigate to the `worksheets` directory in the `stat-545-instructor` repo.
2. Run the following line to autograde (say) worksheet_05a. This will make a copy of the assignments in the `autograded` folder, and will execute all of those files.
   ```
   nbgrader autograde worksheet_05a
   ```

## Step 3: Gather the scores

1. Make a (html) feedback report by running the following code (again, for worksheet_05a), still in the `worksheets` directory. It would be nice to return these to the students, but I just don't think there's a practical way to do this. And, it probably wouldn't be useful for them, anyway.
   ```
   nbgrader generate_feedback worksheet_05a
   ```
2. Update (or make) the `grades.csv` file with the grades by running the following code. Note: this file is deliberately `.gitignore`d -- even though the instructors repo is private, it's best not to take any chances.
   ```
   nbgrader export
   ```
3. Truncate each score at the maximum number of questions that the students need in order to get full marks.
    - For example, if students only need to answer 11 questions correctly, and the student gets 18, then make that 11. If the student gets less than 11 correct, leave the score as-is.
    - **we need an R script that will do this for us**

## Step 4: Upload the scores

1. Modify the `grades.csv` file to abide by the [standards set out by canvas](https://community.canvaslms.com/t5/Instructor-Guide/How-do-I-import-grades-in-the-Gradebook/ta-p/807)
    - **we need an R script that will do this for us**
2. Upload the csv to the "grades" page by clicking on "Actions" > "Import"
