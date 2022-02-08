module Tcr
  class Reaction
    attr_reader :restreamables

    def initialize(options = {})
      @restreamables = options[:restreamables]
    end

    def to_partial_path
      "/tcr/reaction"
    end
  end
end
