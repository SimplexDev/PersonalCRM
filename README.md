# Quiksave

[![Build Status](https://codeship.com/projects/9d518a50-34eb-0136-444e-4ebfccf535e1/status?branch=master)
[![Code Climate](https://codeclimate.com/github/SimplexDev/Quiksave/badges/gpa.svg)](https://codeclimate.com/github/SimplexDev/Quiksave)
[![Coverage Status](https://coveralls.io/repos/github/SimplexDev/Quiksave/badge.svg?branch=master)](https://coveralls.io/github/SimplexDev/Quiksave?branch=master)


## Description:

Thank you for using Quiksave! The site was built with a Rails backend, React frontend, Foundation styling, and a focus on TDD with RSpec and Jasmine.

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
