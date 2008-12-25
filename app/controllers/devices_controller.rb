class DevicesController < ApplicationController
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

end
