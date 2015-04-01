require 'rails_helper'

RSpec.describe VideosController, type: :controller do

  render_views
  fixtures :users

  describe "GET featured" do
    before do
      @video = Video.create(:uri => "31939661", :name => 'An Example Video', :vimeo_id => 511 )

      sign_in users(:david) 
      get :featured, id: @video.id
    end

    it "should display an iframe with the requested uri" do
      expect(response.body).to match 'iframe src="//player.vimeo.com/video/511'
    end
  end

  describe 'Request vimeo data as JSON' do
    before do
      sign_in users(:david) 
      get :populate, max_pages: 1, :format => :json
    end

     it 'should return content type as JSON' do
       expect(response.content_type).to start_with('application/json')
     end

     it 'should parse as valid JSON' do
       expect(lambda { JSON.parse(response.body) }).to_not raise_error
     end

     it 'should have the data of Videos in the JSON' do
       videos = JSON.parse(response.body).to_a
       expect(videos.length).to eq Video.count
     end

  end

  describe "Index" do
    before do
      sign_in users(:david) 
      get :index
    end

    it 'should only belong for routing purposes' do
      expect(response).to render_template(:index)
    end
  end

end

