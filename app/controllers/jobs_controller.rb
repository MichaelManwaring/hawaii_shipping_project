class JobsController < ApplicationController
  def index
  end

  def new
  	@job=Job.new
  end
  def create
  	@job=Job.new(job_params)
  	@user=current_user
  	@current_user.jobs.push(@job)
	  	if @job.save()
	  		flash[:alert] = "Job Saved!"
	  	else
			flash[:alert] = "Could Not Save Job, Please Try Again."
	  	end
	redirect_to root_path
  end

  def show
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
