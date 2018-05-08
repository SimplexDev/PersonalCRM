# PersonalCRM


## Description:

Thank you for using PersonalCRM! The site was built with a Rails backend, React frontend, Foundation styling, and a focus on TDD with RSpec and Jasmine.

## Setup:

To set up the project on your local machine (Mac):
1. Clone repo locally ```git clone https://github.com/SimplexDev/PersonalCRM.git```
2. Run ```bundle exec install```
      then ```npm install```
3. Run ```rake db:create```
      then ```rake db:migrate && rake db:rollback && rake db:migrate```
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

Thank you to all my mentors, instructors, and teammates at Launch Academy coding bootcamp!
* [Launch Academy](https://www.launchacademy.com)
# PersonalCRM
