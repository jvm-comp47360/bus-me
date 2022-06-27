import React from 'react';
import ReactDOM from 'react-dom';
import App from './components/App/App';

const root = document.getElementById('root') as HTMLElement;

if (root) {
  ReactDOM.render(
      <React.StrictMode>
        <App />
      </React.StrictMode>,
      root);
} else throw Error('There is a problem with the HTML document');
