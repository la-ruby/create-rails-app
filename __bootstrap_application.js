
// Make $ available on the window object
// for SJR views and jQuery plugins
// that may expect `$` to be globally available.
require('expose-loader?$!jquery')

// js
import 'bootstrap'
import "@fortawesome/fontawesome-free/js/all";

//css
import '../stylesheets/application'
