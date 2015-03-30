class ViewsController < ApplicationController

  def create
    @view = View.create( :user_id => current_user.id, :video_id => params["video_id"] )
  end
end
