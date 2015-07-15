class Project < ActiveRecord::Base
	include AASM
	mount_uploader :brand_image, BrandImageUploader

	aasm :column => :state do
    state :current, :initial => true
    state :completed
    state :archived
  end
end
