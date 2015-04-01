class VideosController < ApplicationController

  # TO PARSE VIMEO API DATA
  include HTTParty
  base_uri 'https://api.vimeo.com'

  def featured
    @video = Video.find params[:id]
  end

  def populate
    request_vimeo_data
    render :json => Video.all
  end

  def index 
  end
  
  private
  def request_vimeo_data
    # Make request to page using @current_page
    @current_page = @current_page || 1
    @max_pages = params[:max_pages] || 100

    if @current_page <= @max_pages
      puts "\n\n Current Page: #{@current_page} \n\n"
      options = { headers: { 'Authorization' => "bearer 53571d3c0442ff00db4564d5435b7ea7" }, page: @current_page }
      json = JSON.parse self.class.get("/me/videos?page=#{@current_page}", options)
      vimeo_data = json['data']

      if vimeo_data || vimeo_data.length >= 1
        iterate( vimeo_data )
      end
    end
  end

  def iterate( jsonData )
    # Loop through all the data and save to the database
    # Once that is completed, add one to current_page and call request again
    jsonData.each do |current|
      # binding.pry
      begin
        uri = current["uri"]
        vimeo_id = current["uri"].match( /\d+/ ).to_s
        name = current["name"]
        pictures_url = current["pictures"]["uri"].match /(\d+)\D+(\d+)/
        pictures = pictures_url[2].to_s
        stats = current["stats"]["plays"]

        Video.find_or_create_by( :uri => uri, :name => name, :vimeo_id => vimeo_id, :pictures => pictures, :stats => stats )
      rescue 
        redirect_to root_path
      end
    end

    @current_page += 1
    request_vimeo_data
  end

end
