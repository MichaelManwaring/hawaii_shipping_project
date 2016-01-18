class JobsController < ApplicationController
  def index
  end

  def new
  	@job=Job.new
  end
  def create
  	@job=Job.new(job_params)
  	# calculating the cost with a discount at higher numbers of containers
  	if @job.containers_needed.to_int < 10
  		@cost = 200*@job.containers_needed
  	elsif @job.containers_needed < 50
  		@cost = 150*@job.containers_needed
  	else
  		@cost = 100*@job.containers_needed
  	end
  	@job.cost=@cost
  	@user=current_user
  	@current_user.jobs.push(@job)
	  	if @cost > 1000 && @job.save()
	  		flash[:alert] = "Job Saved!"
	  	else
			flash[:alert] = "Could Not Save Job, Please Try Again."
	  	end
	redirect_to root_path
  end

  def show
  	@job=Job.find(params[:id])
  	@trip=Trip.last
  	@trip.jobs.push(@job)
  end

  def edit
  end
  
  def destroy
    @user = current_user
	@a = params[:id]
	association = Job.where(id: @a)
	association.delete_all
  	redirect_to (:back)  
  end

  private #####################################
  
  def job_params
  	params.require(:job).permit(:job_name,:containers_needed,:cargo,:delivery_by,:origin,:destination)
  end
end
