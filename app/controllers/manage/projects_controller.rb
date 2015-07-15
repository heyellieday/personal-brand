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

  def update
  	@project = Project.find(params[:id])
  	@project.update(project_params)
  	@project.slug = nil
  	redirect_to action: "index"
  end

  def create
  	@project = Project.create(project_params)
  	redirect_to action: "index"
  end
  private
  	def project_params
	  	params.require(:project).permit(:job_title, :organization_name, :summary, :location, :website, :brand_image, :cover_image)
	  end
end