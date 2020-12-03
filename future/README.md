Topics that are currently not discussed, that may belong in STAT 545:

- Continuous Integration (with GitHub Actions)
- docker (or just in general, environment management)
- Cloud computing
- bookdown, for writing a thesis?
- blogdown, for making a website? This might be a stretch -- not really related to data analysis.
- using blogdown, 
- making a bookdown book, 
- adding citations to markdown, 
- numbering and referencing sections in an Rmd, 
- GitHub Pages (briefly discussed in 13A)
- Rmd presentations (briefly discussed in 13A -- could probably be put in with the authoring topic, since this only took me 5 minutes to demonstrate)

Making the course dashboard and worksheets a shiny app. Conversation between Vincenzo and The:


> vincenzo  7 days ago   
> Wait -- I didn't realize we ended up getting a stats shiny server. @theha I'm thinking of turning the stat545.stat.ubc.ca/course dashboard into a shiny app (or at least embedding a shiny app there) -- would shiny-apps.stat.ubc.ca be an appropriate place to host such an app?   
>    
> theha  7 days ago   
> How much CPU/RAM would your apps need?   
> 
> vincenzo  17 hours ago   
> @theha Delayed response, but the hope would be to enable students to write R code directly on the website (via something like learnr) for the ~10 tutorials we have online. Not sure how much CPU/RAM this would need. Maybe using docker to avoid malicious code.   
>
> theha  4 hours ago   
> The site run native Shiny Server Pro with one commercial licence for 770 users. Not sure if the software and license would support docker.   
> The most critical is when you run R on any platforms,  using Shiny-Apps/PC/Workstation/VM/Servers, the CPU/RAM resources requirement always depend on what you expect your code to do for an expected period of time. Multiply that to the number of your students and add 20% overhead for unexpected event. That is the number we will use to size the servers/VM.  Run a test on your design codes and let me know.   
