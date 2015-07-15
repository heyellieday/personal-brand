class Manage::ProjectsController < Manage::ApplicationController

  def index
  	@projects = Project.all
  end

  def edit
  	@project = Project.find(params[:id])
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.create(project_params[:project])
  	redirect_to action: "index"
  end
  private
  	def project_params
	  	params.require(:project).permit(:job_title, :organization_name, :summary, :location)
	  end
end