import React from 'react';
import { Link } from 'react-router-dom'

function PageTwo() {
  return (
    <div>
      <h1>Page Two</h1>
      <Link to="/">page one</Link>
    </div>
  );
}

export default PageTwo;