import React from 'react';
import './App.css';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'

import PageOne from './PageOne'
import PageTwo from './PageTwo'

function App() {
  return (
    <div className="App">
      <Router>
        <Switch>
          <Route path="/" exact component={PageOne} />
          <Route path="/two" component={PageTwo} />
        </Switch>
      </Router>
    </div>
  );
}

export default App;
