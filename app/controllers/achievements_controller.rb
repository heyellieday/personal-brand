class AchievementsController < ApplicationController

	def index
		@achievements = Achievement.all.order(position: :asc)
	end
end
