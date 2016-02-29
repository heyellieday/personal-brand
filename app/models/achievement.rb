class Achievement < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	acts_as_list

	def self.ordered_by_position
		order(position: :asc)
	end
end
