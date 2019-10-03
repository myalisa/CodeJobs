class Api::CodejobsController < ApplicationController
  def index
    @jobs = Job.all
    
  end
end
