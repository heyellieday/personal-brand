class AchievementsController < ApplicationController

	def index
		@achievements = Achievement.all.order(date: :desc)
	end
end
