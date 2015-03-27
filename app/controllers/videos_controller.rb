class VideosController < ApplicationController

  # TO PARSE VIMEO API DATA
  include HTTParty
  base_uri 'https://api.vimeo.com'

  def populate
    options = { headers: { 'Authorization' => "bearer 53571d3c0442ff00db4564d5435b7ea7" } }
    json = JSON.parse self.class.get("/me/videos", options)
    vimeo_data = json['data']
    vimeo_data.map do |data_json|
      vimeo_id = data_json['uri'].match(/\d+/).to_s
      Video.create :uri => data_json['uri'], :name => data_json['name'], :vimeo_id => vimeo_id
    end
    redirect_to root_path
  end

  def index
    @videos = Video.all
  end

end
