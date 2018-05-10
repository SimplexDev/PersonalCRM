import React, { Component } from 'react';

const NoteTile = (props) => {

  return (
    <div className="column small-12 medium-12 large-12 end">

      <blockquote>{props.comment}</blockquote>
    </div>
  )
}

export default NoteTile;
