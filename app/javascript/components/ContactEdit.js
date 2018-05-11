import React from 'react';
import Collapsible from 'react-collapsible';

const App = React.createClass({

  render: function() {
    debugger
    return(
      <div>
        <h1 class="page-header">Edit This Contact</h1>
          <Collapsible trigger="First Name">
            <div className="row">
                <h1>First Name Form</h1>
            </div>
          </Collapsible>
        </div>
    );
  }

});

export default App;
