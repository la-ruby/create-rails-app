export function start() {
  document.addEventListener("turbolinks:load", () => {
    create()
    show()
  })
}

function show() {
  $('.toast')
    .toast({ delay: 2000 })
    .toast('show')
}

function create() {
  $.each( getFlashesInDom(), function(index, value) {
    $(".acme-toasts .inner").append(
      template(value)
    )
  })
}

function template(body) {
  return `
    <div class="toast" role="status" aria-live="polite" aria-atomic="true" zdata-delay=3000 style="z-index: 1">
      <div class="toast-header">
        <!-- an icon can be here -->
        <strong class="mr-auto">
          <!-- title here -->
        </strong>
        <small class="text-muted">just now</small>
        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="toast-body">
        ${body}
      </div>
    </div>`
}

function getFlashesInDom() {
  return $.map( $(".acme-flashes"), function(val,i) {
    let html = $.trim( $(val).html() )
    if ( html.length == 0 ) { return }
    return html
  })
}
