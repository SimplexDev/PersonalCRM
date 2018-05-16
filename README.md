# Quiksave

[![Build Status](https://codeship.com/projects/9d518a50-34eb-0136-444e-4ebfccf535e1/status?branch=master)
[![Code Climate](https://codeclimate.com/github/SimplexDev/PersonalCRM/badges/gpa.svg)](https://codeclimate.com/github/SimplexDev/PersonalCRM)
[![Coverage Status](https://coveralls.io/repos/github/SimplexDev/PersonalCRM/badge.svg?branch=master)](https://coveralls.io/github/SimplexDev/PersonalCRM?branch=master)


## Description:

quikSave is a mobile-ready personal CRM system and memory repository to help build and maintain professional relationships. Users create new contacts and import existing contact records, create custom memory fields, export follow-up alerts to iCal, Google Cal, or Outlook calendars.

Name and face recognition just isn't enough when it comes to maintaining professional relationships. I designed this app to build up my own "contact memory" so that I can better prepare myself when engaging with the myriad of people across my professional career - I hope you enjoy and make use of the resources I have scripted here.  

Final feature in progress is a quiz-app section that engages users to challenge their knowledge of their own contacts!

Please let me know if you have any feature requests or suggestions!

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
