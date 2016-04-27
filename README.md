# TurbolinksPhoenix


This is sample repo for test integration with [turbolinks](https://github.com/turbolinks/turbolinks).



To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Seed data `mix run priv/repo/seeds.exs`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.


#Add to existing Phoenix Application:

1. `npm install --save turbolinks`
2. Add turbolinks as brunch dependency in `brunch-config.js` in `npm` section. 
```  
npm: {
    enabled: true,
    // Whitelist the npm deps to be pulled in as front-end assets.
    // All other deps in package.json will be excluded from the bundle.
    whitelist: ["phoenix", "phoenix_html", "turbolinks"]
  }
```
3. Import turbolinks in `web/static/assets/js/app.js`. 
```
...

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"
import "turbolinks"

...
```
