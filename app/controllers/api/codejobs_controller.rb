class Api::CodejobsController < ApplicationController
    
  def index
    response = HTTP.get("https://www.themuse.com/api/public/jobs?page=#{params["page"]}&api_key=#{ ENV['API_KEY'] }")

    @job_page = response.parse
    render json: @job_page
    
  end 
end
