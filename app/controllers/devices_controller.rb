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
		worker = Worker.find_by_id(session[:worker_id])
		if worker
			@device = Device.find(params[:id])
			if worker.devices.find_by_id(params[:id])
				flash[:notice] = "Данный прибор уже содержиться в Вашем списке"
			else
				@device.workers << worker
				flash[:notice] = "Прибор успешно добавлен в Ваш список"
			end
			redirect_to :action => :show, :id => params[:id]
		else
			flash[:notice] = "Для добавления прибора необходимо авторизоваться"
			redirect_to :action => :index
		end
	end
end
