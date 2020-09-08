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