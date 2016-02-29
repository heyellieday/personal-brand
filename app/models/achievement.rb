class Achievement < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged


	def self.ordered_by_position
		order(position: :asc)
	end
end
