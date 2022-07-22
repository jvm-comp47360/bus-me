import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './components/App/App';

const htmlRoot = document.getElementById('root') as HTMLElement;

if (htmlRoot) {
  const reactRoot = ReactDOM.createRoot(htmlRoot);

  reactRoot.render(
      <App />   
  );
} else throw Error('There is a problem with the HTML document');
