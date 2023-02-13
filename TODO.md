
- flipper
- rollbar not airbrake
- "ActionView::Template::Error (The asset "application.js" is not present in the asset pipeline.", does one need to do npm install -g sass && npm install -g esbuild && yarn build && yarn build:css


- reorder
```
    <%= render '/stylesheets' %>
    <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %>
```
