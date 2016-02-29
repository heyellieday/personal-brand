class PagesController < ApplicationController
  def home
  	@projects = Project.all
  	@posts = Post.all
  end
  def resume
  	render json: JSON.pretty_generate({
  		name: "Ellie Day",
  		title: "Freelance Web Developer",
  		experience: [
  			{
  				title: "Lead Developer"
  			}
  		]
  	})
  end
end
