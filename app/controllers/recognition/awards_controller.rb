class Recognition::AwardsController < ApplicationController

  def index
  	@awards = Award.all
  end

end