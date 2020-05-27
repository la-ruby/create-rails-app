class GalleryController < ApplicationController
  def index
    @resouces = policy_scope(Gallery)
  end
end
