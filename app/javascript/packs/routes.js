import React, { Component } from 'react';
import {Router, browserHistory, Route, IndexRoute } from 'react-router';
import ContactsIndexContainer from '../containers/ContactsIndexContainer';
import ContactsShowContainer from '../containers/ContactsShowContainer';
import UsersActivityContainer from '../containers/UsersActivityContainer';
import LandingPage from '../containers/LandingPage';

class Routes extends Component {

  constructor(props){
    super(props);
    this.state = {}
  }


  render() {
    return (
      <Router history={browserHistory}>
        <Route path='/' component={LandingPage} />
        <Route path='/contacts' component={ContactsIndexContainer} />
        <Route path="contacts/:id" component={ContactsShowContainer} />
        <Route path="users/activity" component={UsersActivityContainer}/>
      </Router>
    );
  }
}

export default Routes;
