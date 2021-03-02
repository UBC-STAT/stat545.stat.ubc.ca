# Autograding Worksheets

Written by: David Kepplinger | Updated by: [Diana Lin](mailto:diana.lin@alumni.ubc.ca), 2021-JAN-16

This guide is meant to help you go from students' worksheet submissions, to a grade for them on canvas.

**Prerequisites**: This assumes that the instructions under "Launching the Assignment" in the `making_worksheets.md` file have been followed correctly.

## Start Docker Container

**Do NOT run the submissions on your computer! Everything should be run in a Docker container!**

1. Open a terminal and go to the folder `worksheet_dockerfile/`.
1. Build the Docker image with `docker build . -t nbgrader`.
1. Go to the folder `worksheets/` (i.e., the folder containing the `nbgrader_config.py` file) and run a Docker container with the following command:
    ```shell
    docker run --rm -p 8888:8888 \
      -v "${PWD}":/mnt/nbgrader_root \
      --name nbgradercontainer \
      nbgrader:latest
    ```
    - This will show the link to use to connect to the Jupyter web interface. You can minimize this Terminal window but _DO NOT_ close it.
1. You also need to attach a terminal to the new container with `docker exec -it nbgradercontainer /bin/bash`. This will be the main point of interaction with nbgrader. All `nbgrader` commands from this point on will be run from this terminal window (a.k.a. Terminal A). You should see this after running `docker exec -it nbgradercontainer /bin/bash`:
    ```shell
    (base) jovyan@317f0bb9052a:~$ 
    ```
    - The home directory in this Docker container is the same directory as `worksheets/`
    - To move things "into the Docker container", you will move them to the corresponding directories in `worksheets/`
    - Within the Docker container, you will not be able to access anything outside of `worksheets/`
    - You might need to create some directories in `worksheets` so that they exist in the Docker container:
    ```
    (base) jovyan@317f0bb9052a:~$ ls -l
    total 4
    lrwxrwxrwx 1 jovyan users   28 Jan 16 23:33 canvas.py -> /mnt/nbgrader_root/canvas.py
    lrwxrwxrwx 1 jovyan users   29 Jan 16 23:33 downloaded -> /mnt/nbgrader_root/downloaded       # <--- does not currently exist yet
    lrwxrwxrwx 1 jovyan users   31 Jan 16 23:33 gradebook.db -> /mnt/nbgrader_root/gradebook.db
    lrwxrwxrwx 1 jovyan users   25 Jan 16 23:33 grades -> /mnt/nbgrader_root/grades               # <--- does not currently exist yet
    lrwxrwxrwx 1 jovyan users   37 Jan 16 23:33 nbgrader_config.py -> /mnt/nbgrader_root/nbgrader_config.py
    lrwxrwxrwx 1 jovyan users   26 Jan 16 23:33 release -> /mnt/nbgrader_root/release
    lrwxrwxrwx 1 jovyan users   25 Jan 16 23:33 source -> /mnt/nbgrader_root/source
    drwsrwsr-x 2 jovyan users 4096 Jan 16 08:32 work
    ```
    - You can create these directories in `worksheets/`, using another separate Terminal window (a.k.a. Terminal B).
    ```
    [ dianalin@dlin: ~/stat-545-instructor/worksheets ] $ mkdir grades; mkdir downloaded
    ```

## Preparation Step

**This step needs to be done only the first time.**

To use nbgrader, the student IDs from Canvas must be imported first.

1. Export the gradebook as CSV file.
1. Open the CSV and and remove all but the _ID_ column. Rename the _ID_ column to (lower-case) _id_. The second 'blank' line of the CSV can remain the same-- do not make any other changes except for changing `ID` to `id`. **Save as** `students.csv` in `worksheets/`.
    - Because you are using **save as**, there now be two versions of the Canvas gradebook CSV file:
        1. Original: `2021-01-16T1224_Grades-STAT_545B_102.csv` (move this into the `grading/`)
        1. Modified: `students.csv` (should already be in `worksheets/`)
1. Run the following command `nbgrader db student import /mnt/nbgrader_root/students.csv` (Terminal A).

## Step 1: Gather Submissions

1. After the deadline, download student submissions from Canvas.
1. Move the ZIP file into the folder `downloaded/{assignment_id}/archive`. You will need to make these 3 nested folders in `worksheets/` to be able to access them within the Docker container, for example (in Terminal B):
    ```shell
    [ dianalin@dlin: ~/stat-545-instructor/worksheets ] $ mkdir -p downloaded/{assignment_id}/archive && mv ~/Downloads/submissions.zip downloaded/{assignment_id}/archive
    ```
1. Ensure that the file `canvas.py` is in the worksheet directory and that the `nbgrader_config.py` file contains the following lines:
    ```python
    # Only collect submitted notebooks with valid names
    c.ZipCollectApp.strict = True
    ```
1. Within the Docker container, run `nbgrader generate_assignment --force {assignment_id}` (Terminal A), for example `nbgrader generate_assignment --force worksheet_02a`. It doesn't matter if you've run `nbgrader generate_assignment` in the past to generate the student-facing version of the worksheet-- it must be run _again_ within the Docker container or you will encounter issues.
1. Collect the submissions with `nbgrader zip_collect --collector=canvas.CanvasPlugin {assignment_id}` (Terminal A), for example `nbgrader zip_collect --collector=canvas.CanvasPlugin worksheet_02a`.

## Step 2: Run the autograder

1. To ensure the assignment is added to nbgrader and the notebook generated, run `nbgrader db assignment list` (Terminal A). You should see something like:
    ```
    worksheet_02a (due: None)  # <-- assignment "worksheet_02a" is available
        - worksheet_02a        # <-- a notebook called "worksheet_02a" is generated
    ```
    - If the assignment is not listed, add it with `nbgrader db assignmnet add {assignment_id}` (Terminal A), and then generate the assignment with `nbgrader generate_assignment --force {assignment_id}` (Terminal A). If you encounter any issues about the notebook already being associated with submissions, delete the submissions within each student ID, and re-gather them using `nbgrader zip_collect --collector=canvas.CanvasPlugin {assignment_id}` (Terminal A).
1. Run autograding with `nbgrader autograde {assignment_id}` (Terminal A)
1. Export grades with `nbgrader export`. This creates a file `grades.csv` with the students' canvas ID and the points for this one worksheet (although the other worksheets are present as well, they can be ignored). Move this file to the `grades` directory with `mv grades.csv grades/grades_{assignment_id}.csv` (Terminal A). Otherwise it will be lost when the Docker container is terminated.


## Step 3: Publish scores

1. Use the file `grading/compile_nbgrader_grades.R` to compile the grades from nbgrader to a Canvas-readable CSV format. Navigate to the `grading/` directory and run the script (Terminal B):
    ```shell
    Rscript compile_nbgrader_grades.R {raw_canvas_grades.csv}
    ```
    - Since this script will merge the `nbgrader` grades and the existing grades from Canvas, the script requires the 'raw' Canvas grades generated in Step 1, such as `Rscript compile_nbgrader_grades.R 2021-01-16T1224_Grades-STAT_545B_102.csv`
2. Verify that the scores are correct.
    - Worksheets are usually marked as completion-- the student either completes all the required questions or not. For example, there may be 8 questions in a worksheet, but the student may only need to complete 4 questions correctly to receive a score of 4. You can manually fix or write a script to adjust the scores so that scores between 0-3 are adjusted to 0, and scores between 4-8 are adjusted to 4. 
    - **WARNING**: if you had multiple versions of the worksheet circulating, the autograder will run into issues with cell metadata not matching, etc. These worksheets will be given a score of 0, so make sure that you check that all the 0's are _actually_ 0's and not because of differing worksheet versions. **Avoid circulating multiple versions of worksheets**, or make sure that students are only submitting the newest version (that corresponds to the instructor version of the worksheet). Let the students know that adding extra cells in their notebook will cause issues with the autograder.
3. Upload the CSV to the "grades" page by clicking on "Actions" > "Import"


## Some notes on autograder tests

- When writing a test that uses `sort()` on a character vector that contains special characters, the behaviour/ouput will depend on the user's locale, which is also OS-dependent. Stripping away special characters with something like `gsub("[[:punct:]]", "", x)` before `sort()` can address this.
