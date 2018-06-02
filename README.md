# Quiksave

[![Build Status](https://codeship.com/projects/9d518a50-34eb-0136-444e-4ebfccf535e1/status?branch=master)
[![Code Climate](https://codeclimate.com/github/SimplexDev/PersonalCRM/badges/gpa.svg)](https://codeclimate.com/github/SimplexDev/PersonalCRM)
[![Coverage Status](https://coveralls.io/repos/github/SimplexDev/PersonalCRM/badge.svg?branch=master)](https://coveralls.io/github/SimplexDev/PersonalCRM?branch=master)


## Description:

Thank you for using quikSave! The site was built with a Rails backend, React frontend, & Foundation styling.

quikSave is designed as a mobile-responsive personal CRM system and memory repository to help build and maintain knowledge of your professional relationships. Users can utilize existing or create new contact records, jot down notes, create and export date-based follow-up alerts to iCal, Google Cal, and Outlook calendars. Features currently in development include a quiz-app function based on individual user contact information to reinforce users' memory of their relationship details and the ability to export their updated contacts to google.

Name and face recognition just isn't enough when it comes to maintaining professional relationships; as a way to demonstrate the skills that I learned working through Launch Academy's program I designed this app to build up my own "contact memory" so that I can continually engage with the myriad of relationships across my professional career.

## Setup:

To set up the project on your local machine (Mac):
1. Clone repo locally ```git clone https://github.com/SimplexDev/Quiksave.git```
2. Run ```bundle exec install```
      then ```npm install```
3. Run ```rake db:create```
      then ```rake db:migrate```
            then ```rake db:seed```
4. Run ```rails s``` in one console tab,
      open another console tab and concurrently run  ```npm start```
5. Open your browser and visit ```localhost:3000```

For testing:
1. Run ```rake db:test:prepare``` then ```rspec```

For Heroku testing:
log in with username: admin@testing.com    pw: pword456

## Built With:

* [React](https://reactjs.org/) - Frontend
* [Ruby on Rails](http://rubyonrails.org/) - Backend
* [Bundler](bundler.io/) - Ruby Gem Management
* [NPM](https://www.npmjs.com/) - JS Dependency Management
* [Heroku](https://www.heroku.com/) - Server Host
* [PostgreSQL](https://www.postgresql.org/) - Database

## Acknowledgments:

Thank you to all my mentors, instructors, and teammates at Launch Academy coding bootcamp, Boston, MA
* [Launch Academy](https://www.launchacademy.com)
