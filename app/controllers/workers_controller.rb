class WorkersController < ApplicationController
  def index
		@all_workers = Worker.find(:all)
  end

  def show
#@all_workers = Worker.find(:all)
		@worker = Worker.find(params[:id])
  end

	def save_worker
		@worker = Worker.new(params[:worker])
		@worker.save
		redirect_to :action => :index
	end 

  def new

  end

end
