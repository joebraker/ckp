class WorkersController < ApplicationController
  layout 'main'

  def index
		@workers = Worker.find(:all)
  end

  def show
#@all_workers = Worker.find(:all)
		@worker = Worker.find(params[:id])
  end

	def save_worker
		@worker = Worker.new(params[:worker])
		flash.now[:notice] = "Сотрудник #{@worker.lastname} зарегистрирован"
		@worker.save
		redirect_to :action => :index
	end 

  def login
		session[:worker_id] = nil
		if request.post?
			worker = Worker.new(params[:worker])
			worker = Worker.authenticate(worker.email, worker.password)
#	flash[:notice] = " #{worker.lastname}"
			if worker
				session[:worker_id] = worker.id
				flash[:notice] = " #{worker.lastname} успешно залогинился!"
				redirect_to(:action => "index" )
			else
				flash[:notice] = "Неверная комбинация e-mail-пароль"
				redirect_to(:action => "index" )
			end
		end
  end

	def logout
		session[:worker_id] = nil
		redirect_to :action => :index
	end 

end
