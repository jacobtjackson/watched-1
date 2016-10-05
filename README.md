Watched is a simple application for tracking episodes of the TV show Silicon Valley that you have watched. As a user, you currently can sign in, see a list of episodes and view your user profile. There are a couple of additional features that still need to be implemented, which are described below as User Stories.

## Direction

* Fork this repo.
* Implement the User Stories below.
* Alter any part of the existing app as you see necessary.
* Any gems that you add, note its purpose and url in a comment.
* Write any tests you see necessary.
* Feel free to do whatever you like and have time for with the front end (bonus).
* If you have questions or need clarification, please don’t hesitate to ask.

## About the App
The app was created using Ruby 2.3.0 and Rails 5.0.0.1

The Rails environment for this app was originally configured using RVM. ruby-version and ruby-gemset files are included in the repo for those also running RVM.

Devise is installed and configured to manage all of the user account functionality.

The application uses PostgreSQL for its database. The default database.yml file is included.

A seed file is included to seed the Episode data and two user accounts.

## User Accounts/Login Info
##### User One
Email: userone@surveylocal.com  
Password: password

##### User Two
Email: usertwo@surveylocal.com  
Password: password

## User Stories

As a user, viewing the Episodes list, I should see the Season Number, listed with each Episode Title.  
Example: “Season 2”

As a user, viewing the Episodes list, I can mark Episodes as watched.

As a user, viewing my user profile, I should see a list of my watched Episodes.

As a user, viewing my user profile, when I have viewed all Episodes in a Season, I should see just the Season Number listed as watched instead of all of the individual episodes for that season.
