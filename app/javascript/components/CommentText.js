import React from 'react';

const CommentText = (props) => {
  return (
    <div className="field">
      <label className="label">{props.label}</label>
        <textarea
          name={props.name}
          type='text'
          value={props.content}
          onChange={props.handlerFunction}
          size="30"
        />
    </div>
  );
}

export default CommentText;
