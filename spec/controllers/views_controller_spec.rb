require 'rails_helper'

RSpec.describe ViewsController, type: :controller do

  describe "Create View" do
    before do
      @view = View.create(:user_id => '1', :video_id => '511')
    end

    it "should save the id of the video and user to the view model" do
      expect(@view.user_id).to eq(1)
      expect(@view.video_id).to eq(511)
    end
  end

end
