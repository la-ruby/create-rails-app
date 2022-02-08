module Tcr
  class Component
    attr_reader :id

    def initialize(options = {})
      @id = options.fetch :id, self.class.to_s.underscore.dasherize
      @option = options
    end

    def name
      self.class.to_s.underscore
    end

    def endpoint
      "/#{name.pluralize}/#{@id}"
    end

    def form
      "form-of-#{@id}"
    end

    def hidden_id_field_name
      "#{name}[id]"
    end

    def to_partial_path
      "/#{name}"
    end
  end
end
