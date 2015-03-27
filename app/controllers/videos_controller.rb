class VideosController < ApplicationController

  # TO PARSE VIMEO API DATA
  include HTTParty
  base_uri 'https://api.vimeo.com'

  def populate
    options = { headers: { 'Authorization' => "bearer #{VIMEO_TOKEN}" } }
    json = JSON.parse self.class.get("/me/videos", options)
    vimeo_data = json['data']
    vimeo_data.map do |data_json|
      @id = uri.match(/\d+/).to_s
      Video.create :uri => data_json['uri'], :name => data_json['name']
    end
    redirect_to root_path
  end

  def videos
    @videos = Video.all
  end

end
