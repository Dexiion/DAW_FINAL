class ProfilesController < ApplicationController
  def index
    @userInfo = helpers.current_user
  end
end
