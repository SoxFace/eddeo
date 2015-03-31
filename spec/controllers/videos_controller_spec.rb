require 'rails_helper'

RSpec.describe VideosController, type: :controller do

  describe "Featured" do
    before do
      @video = Video.create(:uri => "31939661", :name => 'An Example Video', :vimeo_id => 511 )
    end

    it "should feature the selected video on the feature page" do
      expect(@video.uri).to eq "31939661"
      expect(@video.name).to eq 'An Example Video'
      expect(@video.vimeo_id).to eq 511
    end
  end

  describe 'Request vimeo data as JSON' do
    before do
      get :index, :format => :json
    end

    # it 'should respond with a status 200' do
    #    expect(response).to be_success
    #    expect(response.status).to eq(200)
    #  end

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
      expect(@video.uri).to eq "31939661"
      expect(@video.name).to eq 'An Example Video'
      expect(@video.vimeo_id).to eq 511
      should redirect_to(root_path)
    end

    # it 'should redirect to root path' do
    #   should redirect_to { root_path }
    #   should redirect_to(action: :index)
    # end

  end


end


# RSpec.describe Fruit, :type => :model do

#   it { should belong_to :shelf }

#   describe "An apple" do
#     before do
#       @apple = Apple.create(:name => 'Granny Smith')
#     end

#     it 'should not be squishy' do
#       expect(@apple.squishy?).to eq(false)
#     end

#     it 'should remember what class it is using Single Table Inheritance (STI)' do
#       apple = Fruit.find @apple.id
#       expect(apple).to_not eq(nil) # Existence/persistence
#       expect(apple.class).to eq(Apple) # Class via STI
#       expect(apple).to eq(@apple) # Same object
#       expect(apple.is_a? Fruit).to eq(true) # Inheritance
#       expect(apple.class.ancestors).to include(Fruit)
#     end
#   end