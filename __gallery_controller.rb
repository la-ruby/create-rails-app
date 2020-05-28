class GalleryController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  def index
    @resouces = policy_scope(Gallery)
  end

  def page_two
    @resouces = policy_scope(Gallery)
  end
end
