// plutonium-core/blob/e3dd003cdf9689576d8f33d50924979017a54a09/app/assets/js/turbo/turbo_debug.js
let eventNames = [
  'turbo:click',
  'turbo:before-visit',
  'turbo:visit',
  'turbo:submit-start',
  'turbo:before-fetch-request',
  'turbo:before-fetch-response',
  'turbo:submit-end',
  'turbo:before-cache',
  'turbo:before-render',
  'turbo:before-stream-render',
  'turbo:render',
  'turbo:load',
  'turbo:before-frame-render',
  'turbo:frame-render',
  'turbo:frame-load',
  'turbo:frame-missing',
  'turbo:fetch-request-error',
  'turbo:reload', // https://github.com/hotwired/turbo/pull/556
]

eventNames.forEach(eventName => {
  document.addEventListener(eventName, (event) => {
    console.log(event.type);
  });
});
