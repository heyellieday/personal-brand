class PagesController < ApplicationController
  def home
  	@projects = Project.all
  	@posts = Post.all
  end
end
