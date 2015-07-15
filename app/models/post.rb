class Post < ActiveRecord::Base
	def self.get_latest(username)
		latest_posts = Medium::Posts.latest(username)
		posts = latest_posts[:posts]
		posts.each do |post|
			found_post = Post.find_by(url: post[:url])
			if found_post != nil
				found_post.update(post)
			else
				Post.create(post)
			end
		end
	end
end
