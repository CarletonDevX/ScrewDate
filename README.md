ScrewDate
============

TODO
------
1. Finish homepage
  * Design
  * CSS/Template
2. Finish searchpage
  * Design
  * CSS/Template
  * Rails Views
  * Backend integration
3. Finish Roommate Editor page
  * Design
  * CSS/Template
  * Rails Views
  * Backend integration
4. Collect Stalkernet data ([Completed](https://github.com/CarletonDevX/Stalkernet))
5. Format data in postgreSQL table (Completed - run the importdata.py script with data in ScrewDate folder. [lbiester](https://github.com/lbiester) has the data)
6. Models, Migrations to integrate with database
7. SSO integration (may just use typical authentication scheme)
8. Email API integration
9. Hosting and Deployment

Intended Website Flow
----------------------
1. User enters site, clicks on sign up
2. User goes through SSO
3. User then finds their roommate in the database, clicks on them to send an email to both parties (confirmation, opt out)
4. User then searches through available profiles, selects a person currently available on the site.
5. User can then talk to the proxy of the desired person, decide whether they want to make the screwdate.
6. Confirm at this point with request to profile.  
7. If confirmed, ScrewDatees both receive notification via email stating they have been screwdated, can opt out at this point
8. Possible additional feature: If person is unsure, can ask an additional friend which will send friend the name. Friend can opt-out.
9. Take both ScrewDatees off of the site, place in a database to send to SAO.

Environment Setup
-----------------
1. Install Ruby
2. Install Rails `$ gem install rails`
3. (optional) Install Homebrew (important for next step)
4. Install PostgreSQL `$ brew install postgresql`
5. `cd path/to/screwdate`
6. `bundle install` (if pg gem doesn't install, try the below command)
7. `$ ARCHFlAGS= "-arch x86_64" gem install pg`

After this you should be set to go!

If you want to work on this repository, just send me ([chetaldrich](https://github.com/chetaldrich)) an email.  
