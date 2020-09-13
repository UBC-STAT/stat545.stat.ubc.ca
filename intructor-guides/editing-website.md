## Editing the Website

**Info**: This repository is hooked up to Travis CI and Netlify. All you need to do is push a change to the `master` branch, and the site will automatically render and deploy. _**UPDATE**: it seems html files need to be produced manually at this moment. This still needs troubleshooting._

~~Wondering where the `.html` files are? They've been `.gitignore`d, and produced by Travis/Netlify.~~

**To edit the homepage**:

- Each "cell" has its own `.md` file in `content/home/`. Each file is a ["widget" under the Hugo Academic theme](https://wowchemy.com/docs/page-builder/) -- check out the docs to see how to edit each one.
    - the `index.md` is special. It lives by itself and doesn't correspond to a widget on the homepage.
- To edit your author page, edit the `.md` file in `content/authors/your_name/`
- All other pages live somewhere in `content/`, but in order for them to be findable, they need to be linked to.
    - The exception is the "pages" widget. Here, you're allowed to specify a folder in `content/`, and the contents of that folder will appear in the widget. 
- Website parameters, like themes and menus, can be found in `config.toml` and `/config` toml files. 
- `static/` contains static stuff like pictures that the site draws on.

**Running the website locally**

When editing the website, it's okay to directly push to the main branch, but it's usually a good idea to check that the changes work locally first:

1. From RStudio, make sure the `stat545.stat.ubc.ca` Project is open.
2. Probably a good idea to update the build of the site with `blogdown::build_site()`, just to make sure everything is up-to-date.
    - Note: the working directory must be the root of the repository `stat545.stat.ubc.ca`
3. Run `blogdown::serve_site()` to run the site locally. This will continually build any changes you make, and keep the local website display up-to-date.
