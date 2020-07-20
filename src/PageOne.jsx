import React from 'react';
import { Link } from 'react-router-dom'

function PageOne() {
  return (
    <div>
      <h1>Page One</h1>
      <Link to="/two">page two</Link>
    </div>
  );
}

export default PageOne;