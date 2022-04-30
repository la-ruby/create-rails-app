import * as React from 'react'
import * as ReactDOM from 'react-dom/client'

class Hello extends React.Component<{}, {}> {
  public render() {
    return (
      <div>
        Hello World!
      </div>
    );
  }
}

// TODO: investigate whether unmount is needed
// github.com/reactjs/react-rails/issues/1028#issuecomment-862475500
//
document.addEventListener("turbo:load", () => {
  const root = ReactDOM.createRoot(document.getElementById("hello-react-mount-point"));
  root.render(
    <React.StrictMode>
      <Hello />
    </React.StrictMode>
  );
})