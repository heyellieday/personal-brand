module Api
	class ProjectResource < JSONAPI::Resource
	  attributes :job_title, :organization_name, :summary, :location
	  has_one :eligibility_requirement

	  filter :eligibility_requirement_id
	end
end