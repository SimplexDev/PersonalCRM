import React, { Component } from 'react';

const QuizTile = (props) => {

  return (
    <div className="column small-12 medium-12 large-12 end">
      <div className="row collapse">
          <div className="columns medium-6">
              <div className="content panel">
                <div className="contact-tile">
                  <h6>Testing From Inside the QuizTile</h6>
                </div>
              </div>
            </div>
          </div>
        </div>
  )
}

export default QuizTile;
