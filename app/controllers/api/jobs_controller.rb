class Api::JobsController < ApplicationController
  def index
    @jobs = Job.all
    render 'index.json.jb'
  end

  def create
    @job = Job.new(
                    position_name: params[:position_name],
                    salary: params[:salary],
                    location: params[:location],
                    company_name: params[:company_name],
                    company_size: params[:company_size],
                    date_posted: params[:date_posted],
                    schedule: params[:schedule],
                    summary: params[:summary]
                    )
    if @job.save
     render 'show.json.jb'
    end
  end

  def show
    @job = Job.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @job = Job.find(params[:id])
    
    @job.position_name =  params[:position_name]
    @job.salary =  params[:salary]
    @job.location =  params[:location]
    @job.company_name =  params[:company_name]
    @job.company_size =  params[:company_size]
    @job.date_posted =  params[:date_posted]
    @job.schedule =  params[:schedule]
    @job.summary =  params[:summary]

    @job.save
    render 'show.json.jb'
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    render json:{message: "This job is already closed!"}
  end
end
