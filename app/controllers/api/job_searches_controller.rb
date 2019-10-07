class Api::JobSearchesController < ApplicationController
  def index
    # when a user search location Chicago, it'll show all the opening in Chicago.
    if params[:city] && params[:state]
      city = params[:city].gsub(" ", "_")
  
      response = HTTP.get("https://www.themuse.com/api/public/jobs?page=#{params["page"]}&location=#{city}%2C%20#{params["state"]}&api_key=#{ ENV['API_KEY'] }")
    else
      response = HTTP.get("https://www.themuse.com/api/public/jobs?page=#{params["page"]}&api_key=#{ ENV['API_KEY'] }")
    end

    @job_page = response.parse
    render json: @job_page
  end
end
