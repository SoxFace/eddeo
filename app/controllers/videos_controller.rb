class VideosController < ApplicationController

  # TO PARSE VIMEO API DATA
  include HTTParty
  base_uri 'https://api.vimeo.com'

  def request_vimeo_data
    # Make request to page using @current_page
    @current_page = @current_page || 1
    puts "\n\n Current Page: #{@current_page} \n\n"
    options = { headers: { 'Authorization' => "bearer 53571d3c0442ff00db4564d5435b7ea7" }, page: @current_page }
    json = JSON.parse self.class.get("/me/videos?page=#{@current_page}", options)
    vimeo_data = json['data']
    # require 'pry'
    # binding.pry

    if vimeo_data || vimeo_data.length >= 1
      iterate( vimeo_data )
    end

    render :json => Video.all
  end

  def populate
    options = { headers: { 'Authorization' => "bearer 53571d3c0442ff00db4564d5435b7ea7" } }
    json = JSON.parse self.class.get("/me/videos", options)
    vimeo_data = json['data']
    vimeo_data.map do |data_json|
      vimeo_id = data_json['uri'].match(/\d+/).to_s
      Video.create :uri => data_json['uri'], :name => data_json['name'], :vimeo_id => vimeo_id, :pictures => data_json['pictures']['uri'], :stats => data_json['stats']['plays']
    end
    redirect_to root_path
  end

  def index
  end
  
  private
  def iterate( jsonData )
    # Loop through all the data and save to the database
    # Once that is completed, add one to current_page and call request again
    jsonData.each do |current|
      # binding.pry
      begin
        uri = current["uri"]
        vimeo_id = current["uri"].match( /\d+/ ).to_s
        name = current["name"]
        pictures = current["pictures"]["uri"]
        stats = current["stats"]["plays"]
        Video.find_or_create_by( :uri => uri, :name => name, :vimeo_id => vimeo_id, :pictures => pictures, :stats => stats )
      rescue 
        binding.pry
      end
    end

    @current_page += 1
    request_vimeo_data
  end

end
