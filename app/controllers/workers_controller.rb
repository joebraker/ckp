class WorkersController < ApplicationController
  def index
  end

  def show
#@all_workers = Worker.find(:all)
		@worker = Worker.find(params[:id])
  end

	def save_worker
		@worker = Worker.new(params[:worker])
		@worker.save
	end 

  def new

  end

	def list_workers
		@all_workers = Worker.find(:all)
	end
end
