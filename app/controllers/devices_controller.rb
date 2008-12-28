class DevicesController < ApplicationController
   layout 'main'

  def index
		@devices = Device.find(:all)
  end

  def show
		@device = Device.find(params[:id])
  end

	def save_device
		@device = Device.new(params[:device])
		@device.save
		redirect_to :action => :index
	end 

	def link_to_worker
		@device = Device.find(params[:id])
		@device.workers << Worker.first		
		flash[:notice] = "Прибор успешно добавлен в Ваш список"
		redirect_to :action => :show, :id => params[:id]
	end
end
