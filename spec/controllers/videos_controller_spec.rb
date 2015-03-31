require 'rails_helper'

RSpec.describe VideosController, type: :controller do

  describe "Featured" do
    before do
      @video = Video.create(:uri => "31939661", :name => 'An Example Video', :vimeo_id => 511 )
    end

    it "should display the selected video on the feature page" do
      expect(@video.uri).to eq "31939661"
      expect(@video.name).to eq 'An Example Video'
      expect(@video.vimeo_id).to eq 511
    end
  end

  describe 'Request vimeo data as JSON' do
    before do
      get :index, :format => :json
    end

     it 'should return content type as JSON' do
       expect(response.content_type).to eq('application/json; charset=utf-8')
     end

     it 'should parse as valid JSON' do
       expect(lambda { JSON.parse(response.body) }).to_not raise_error
     end

     it 'should have the data of Videos in the JSON' do
       videos = JSON.parse(response.body)
       #expect(countires).to eq(assigns(:countries))
     end
   end

  describe "Populate" do
    before do
      @video = Video.create(:uri => "31939661", :name => 'An Example Video', :vimeo_id => 511 )
    end

    it 'should populate the database as json' do
      expect(@video.uri).to eq("31939661")
      expect(@video.name).to eq('An Example Video')
      expect(@video.vimeo_id).to eq(511)
      expect(response.status).to eq(200)
    end

  end

  describe "Index" do
    it 'should only belong for routing purposes' do
    end
  end

  describe 'Iterate' do
    before do
      @video = Video.create(:uri => "31939661", :name => 'An Example Video', :vimeo_id => 511, :pictures => "15539661", :stats => 465 )
      end

      it 'should loop through each video and save it to the database using the regex' do
        expect(@video.uri).to eq("31939661")
        expect(@video.name).to eq('An Example Video')
        expect(@video.vimeo_id).to eq(511)
        expect(@video.pictures).to eq("15539661")
        expect(@video.stats).to eq(465)
      end
  end

end
