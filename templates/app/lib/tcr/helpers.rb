module Tcr
  module Helpers
    # https://stackoverflow.com/a/25605399
    def tcr_form_with(component)
      form_with(url: component.endpoint, method: 'patch', class: 'd-inline-block', id: component.form) do |form|
        yield form if block_given?
        concat form.hidden_field component.hidden_id_field_name, value: component.id
        concat form.submit "Save"
      end
    end
  end
end
