module Tcr
  class Controller < ApplicationController
    before_action :set_resource, only: %i[ update ]

    # PATCH/PUT /resources/1
    def update
      respond_to do |format|
        @reaction = @resource.update(resource_params)
        format.turbo_stream { render @reaction }
      end
    end
  end
end
