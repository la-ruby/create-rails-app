# la-ruby/tcr
# Thin Components For Rails
#
# A thin layer of help to componentize rails views
#
# Components listen for user interaction with stimulus,
# then does a PATCH to fetch new state via `Reaction` objects.
# Reactions can be
#   - Re-streaming of some (or all) divs
#   - Flashing (which is actually a variation of above)
#   - Scroll to an area of the page
#   - Redirect to a page
#
# See also:
#
#   Some interesting gems in the general field of taming your views
#
#   - https://github.com/stimulusreflex/stimulus_reflex
#   - https://github.com/trailblazer/cells
#   - https://viewcomponent.org
#   - https://github.com/bullet-train-co/nice_partials
#   - https://github.com/drapergem/draper
#
module Tcr
end
