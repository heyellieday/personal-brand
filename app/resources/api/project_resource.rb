module Api
	class ProjectResource < JSONAPI::Resource
	  attributes :job_title, :organization_name, :summary, :location
	end
end