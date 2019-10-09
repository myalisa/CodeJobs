class Api::JobsController < ApplicationController
  def index
    @jobs = Job.all
    render 'index.json.jb'
  end

  def create
    @job = Job.new(
                    name: params[:name],
                    locations: params[:locations],
                    company: params[:company],
                    publication_date: params[:publication_date],
                    type: params[:type],
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
    
    @job.name =  params[:name]
    @job.locations =  params[:locations]
    @job.company =  params[:company]
    @job.publication_date =  params[:publication_date]
    @job.type =  params[:type]
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
