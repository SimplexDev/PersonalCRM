import React, { Component } from 'react';
import {Router, browserHistory, Route, IndexRoute } from 'react-router';
import ContactsIndexContainer from '../containers/ContactsIndexContainer';
import ContactsShowContainer from '../containers/ContactsShowContainer';

class Routes extends Component {

  constructor(props){
    super(props);
    this.state = {}
  }


  render() {
    return (
      <Router history={browserHistory}>
        <Route path='/' component={ContactsIndexContainer} />
        <Route path="contacts/:id" component={ContactsShowContainer} />
      </Router>
    );
  }
}

export default Routes;
