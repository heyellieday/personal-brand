class Recognition::MentionsController < ApplicationController

  def index
  	@mentions = Mention.all
  end

end