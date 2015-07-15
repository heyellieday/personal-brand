class Project < ActiveRecord::Base
	include AASM
	mount_uploader :brand_image, BrandImageUploader
	mount_uploader :cover_image, CoverImageUploader

	extend FriendlyId
  friendly_id :organization_name, use: :slugged

	aasm :column => :state do
    state :current, :initial => true
    state :completed
    state :archived
  end
end
