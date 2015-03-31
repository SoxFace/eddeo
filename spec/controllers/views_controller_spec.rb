require 'rails_helper'

RSpec.describe ViewsController, type: :controller do

  fixtures :users

  describe "Create View" do
    before do
      sign_in users(:david) 
      post :create, :video_id => '1'
    end

    it "should save the id of the video and user to the view model" do
      expect(View.find_by(video_id: '1')).to_not be_nil
    end
  end

end
