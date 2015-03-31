class ViewsController < ApplicationController

  def create
    @view = View.find_or_create_by( :user_id => current_user.id, :video_id => params["video_id"] )
  end
end
