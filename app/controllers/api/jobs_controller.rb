class Api::JobsController < ApplicationController
  def index
    @jobs = Job.all
    render 'index.json.jb'
  end

  def create
    @jobs = Job.new(
                    position_name: params[:position_name],
                    salary: params[:salary],
                    location: params[:location],
                    company_name: params[:company_name],
                    company_size: params[:company_size],
                    date_posted: params[:date_posted],
                    schedule: params[:schedule],
                    summary: params[:summary]
                    )
    @job.save
    render 'show.json.jb'
  end
end
