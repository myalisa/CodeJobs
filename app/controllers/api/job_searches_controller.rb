class Api::JobSearchesController < ApplicationController
  def index
    page_number = params[:page] || 1
    if params[:city] && params[:state]
      city = params[:city].gsub(" ", "_")
  
      response = HTTP.get("https://www.themuse.com/api/public/jobs?page=#{page_number}&location=#{city}%2C%20#{params["state"]}&api_key=#{ ENV['API_KEY'] }")
    elsif params[:level]
      level = params[:level].gsub(" ", "_")
      response = HTTP.get("https://www.themuse.com/api/public/jobs?page=#{page_number}&level=#{level}&api_key=#{ ENV['API_KEY'] }")
    else
      response = HTTP.get("https://www.themuse.com/api/public/jobs?page=#{page_number}&api_key=#{ ENV['API_KEY'] }")
    end

    puts "*" * 30
    p response.status
    puts "*" * 30

    @job_page = response.parse
    render json: @job_page
  end
end
