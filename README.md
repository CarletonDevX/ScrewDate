ScrewDate
============

        TODO
        -------------
        1. Finish homepage
                1.1 Design
                1.2 CSS/Template
        2. Finish searchpage
                2.1 Design
                2.2 CSS/Template
                2.3 Django Views
                2.4 Backend integration
        3. Finish Roommate Editor page
                3.1 Design
                3.2 CSS/Template
                3.3 Django Views
                3.4 Backend integration
        4. Collect Stalkernet data
        5. Format data in postgreSQL table
        6. Models, Migrations to integrate with database
        7. SSO integration
        8. Email API integration
        9. Hosting and Deployment
        Website flow goes as follows: 
                1. User enters site, clicks on sign up
                2. User goes through SSO 
                3. User then finds their roommate in the database, clicks on them to send an email to both parties (confirmation, opt out) (at this point descriptions could be added)
                4. User then searches through available profiles, selects a person currently available on the site. 
                5. User can then talk to the proxy of the desired person, decide whether they want to make the screwdate. Confirm at this point with request to profile.  
                6. If confirmed, ScrewDatees both receive notification via email stating they have been screwdated, can opt out at this point 
                6.5. Possible additional feature: If person is unsure, can ask an additional friend which will send friend the name. Additional friend can then opt-out.
                7. Take both ScrewDatees off of the site, place in a database to send to SAO. 

        Environment set up required for development on this application: 
                1. You're going to want to install pip. http://blog.troygrosfield.com/2010/12/18/installing-easy_install-and-pip-for-python/
                2. Install Django onto your system. https://docs.djangoproject.com/en/dev/intro/install/
                3. Install Git (if you don't have it already) http://www.git-scm.com/downloads
                4. Then get a GitHub account if you don't have one.

                (5). For those of you on Windows, I would highly recommend installing cygwin, and then using that to perform UNIX terminal commands. 

        Current assignments: 
                Sam Vinitsky, Meg Crenshaw (front-end) (Currently working on static pages for main page and login/roommate editor prompts)
                Florence Wong, Yawen Chen, Julia Connelly (front-end) (Currently working on static pages for search results)
                Sam Spaeth, Dylan Wells (database) (Currently working on building a database for student profiles)
                Chris Williams, Chet Aldrich (backend) (Currently working on building models and migrations to work with database)
    
    
        If you want to work on this repository, just send me an email and I'll get you in a team
        with someone. I still need people to work on Django integration with the front end, more front end people, and email API integration.

        Finally, about the timeline. We have two weeks to complete this project. I think we should all meet on Thursday or Friday at some point if possible for a quick checkin on progress, and 
        then moving forward with integration of the various project parts in the next week. In general, that's what we should be shooting for. I'll put a more comprehensive TODO list here soon.     
    
        I think that's the gist of what we did for this meeting. Any additions will be welcome, as I'll probably add this to the repo's README so that everybody can keep track of what's going on. 


