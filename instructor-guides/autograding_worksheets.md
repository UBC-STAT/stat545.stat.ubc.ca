# Autograding Worksheets

This guide is meant to help you go from students' worksheet submissions, to a grade for them on canvas.

**Prerequisites**: This assumes that the instructions under "Launching the Assignment" in the `making_worksheets.md` file have been followed correctly.

## Start Docker Container

**Do NOT run the submissions on your computer! Everything should be run in a Docker container!**

1. Open a terminal and go to the folder `worksheet_dockerfile/`.
2. Build the Docker image with `docker build . -t nbgrader`.
2. Go to the folder `worksheets/` (i.e., the folder containing the `nbgrader_config.py` file) and run a Docker container with the following command:
```
docker run --rm -p 8888:8888 \
  -v "${PWD}":/mnt/nbgrader_root \
  --name nbgradercontainer \
  nbgrader:latest
```
  This will show the link to use to connect to the Jupyter web interface.
3. You also need to attach a terminal to the new container with `docker exec -it nbgradercontainer /bin/bash`.
   This will be the main point of interaction with nbgrader.

## Preparation Step

**This step needs to be done only the first time.**

To use nbgrader, the student IDs from Canvas must be imported first.

1. Export the gradebook as CSV file (e.g., `students.csv`) and remove all but the _ID_ column. Rename the _ID_ column to (lower-case) _id_.
2. Run the following command `nbgrader db student import path/to/students.csv`

## Step 2: Gather Submissions

1. After the deadline, download student submissions from Canvas.
2. Move the ZIP file into the folder `downloaded/{assignment_id}/archive`.
3. Ensure that the file `canvas.py` is in the worksheet directory and that the `nbgrader_config.py` file contains the following lines:
```python
# Only collect submitted notebooks with valid names
c.ZipCollectApp.strict = True
```
4. Collect the submissions with `nbgrader zip_collect --collector=canvas.CanvasPlugin {assignment_id}`, for example `nbgrader zip_collect --collector=canvas.CanvasPlugin worksheet_02a`.

## Step 2: Run the autograder

1. Ensure the assignment is added to nbgrader and the notebook generated
  1. Run `nbgrader db assignment list`. You should see something like
```
worksheet_02a (due: None)  # <-- assignment "worksheet_02a" is available
    - worksheet_02a        # <-- a notebook called "worksheet_02a" is generated
```
  2. If the assignment is not listed, add it with `nbgrader db assignmnet add {assignment_id}`.
  3. Generate the assignment with `nbgrader generate_assignment {assignment_id}`.
3. Run autograding with `nbgrader autograde {assignment_id}`.
4. Export grades with `nbgrader export`. This creates a file `grades.csv` with the students' canvas ID and the points for this one worksheet (although the other worksheets are present as well, they can be ignored). Move this file to the `grades` directory with `mv grades.csv grades/grades_{assignment_id}.csv`. Otherwise it will be lost when the Docker container is terminated.


## Step 3: Publish scores

1. Use the file `grading/compile_nbgrader_grades.R` to compile the grades from nbgrader to a Canvas-readable CSV format.
2. Verify that the scores are correct.
3. Upload the CSV to the "grades" page by clicking on "Actions" > "Import"


## Some notes on autograder tests

- When writing a test that uses `sort()` on a character vector that contains special characters, the behaviour/ouput will depend on the user's locale, which is also OS-dependent. Stripping away special characters with something like `gsub("[[:punct:]]", "", x)` before `sort()` can address this.
