# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Post.get_latest("heyellieday")

organizations = [
	{
		name: "mRelief",
		description: "I'm the technical advisor for mRelief, a nonprofit that seeks to streamline the delivery of social services. I advise on and help code complex issues such as interactive SMS-based benefits screeners and dynamic eligibility determiners.",
		website: "http://mrelief.com"
	},
	{
		name: "Fresh U",
		description: "Fresh U is an online publication for freshmen in college, written by freshmen. I lead their development efforts where I manage the content delivery and creation platforms.",
		website: "https://freshu.io"
	},
	{
		name: "CloudPeeps",
		description: "In May of 2015, I built the redesigned homepage and sign up pages for CloudPeeps. In addition, I created HTML templates for their new marketing emails.",
		website: "https://cloudpeeps.com"
	},
	{
		name: "Juiced Magazine",
		description: "Juiced Magazine is a publication at Syracuse University in New York. In 2013, I helped them launch their first online publication and have since rebuilt their site to improve existing functionality.",
		website: "http://juicedmag.org"
	}
]
organizations.each do |organization|

	Organization.create(name: organization[:name], description: organization[:description], website: organization[:website])

end

achievements = [
	{
		name: "Scholarship for NYC LWT Summit",
		description: "I received a scholarship to attend the Lesbians Who Tech Summit in New York City. This was the second time I was awarded a scholarship for a LWT Summit.",
		date: "August 2015"
	},
	{
		name: "White House LGBTQ Tech Fellow",
		description: "I was selected to attend an LGBTQ Tech & Innovation Summit at The White House in D.C. where we discussed and built solutions for struggles that LGBTQ people in technology face.",
		date: "August 2015"
	},
	{
		name: "Launched Fresh U",
		description: "I successfully deployed a custom content delivery network and CMS for managing Fresh U, an online publication I work with. The site received over 100k in the first month.",
		date: "June 2015"
	},
	{
		name: "1st place at Startup Weekend Chicago",
		description: "My team placed second at this hackathon. We built an easy to use invoicing solution for small businesses and freelancers.",
		date: "February 2015"
	},
	{
		name: "Scholarship for SF LWT Summit",
		description: "I received a scholarship to attend the Lesbians Who Tech Summit in San Francisco that made it possible for me to attend the Summit.",
		date: "February 2015"
	},
	{
		name: "2nd place at Cisco IoT Hackathon",
		description: "At the Cisco Internet of Things Hackathon, my team placed second with a location-based analytics platform for retail businesses.",
		date: "October 2014"
	}
]
achievements.each do |achievement|

	Achievement.create(name: achievement[:name], description: achievement[:description], date: achievement[:date])

end

mentions = [
	{
		name: "\"Startup Weekend FinTech is a Huge Success in Chicago!\"",
		description: "\"Chicago Startup Weekend FinTech, co-hosted by Startup Weekend Chicago and FinTex Chicago, was a huge success!\"",
		url: "http://blog.up.co/2015/03/10/startup-weekend-fintech-huge-success-chicago/"
	},
	{
		name: "\"Startup Weekend Chicago spawns three winning concepts in fintech\"",
		description: "\"From October 10 to 12 , in 1871 venue, Cisco hosted a competitive 24 hours hackathon (#IoTWFHack), produced by Monkeybars, one of the startups at 1871.\"",
		url: "http://www.chicagotribune.com/bluesky/originals/chi-startup-weekend-chicago-fintex-bsi-20150227-story.html"
	},
	{
		name: "\"Announcing the Internet of Things World Forum Hackathon Winners\"",
		description: "\"Within 54 hours, fintech folks from Chicago and beyond launched concepts to automate invoicing, bring crowdfunding to insurance and make tax filing as easy as snapping a few photos — among other ideas.\"",
		url: "https://www.iotwf.com/iotwf2014/hackathon"
	},
	{
		name: "\"Mattermark Daily – Wednesday, May 6th, 2015\"",
		description: "\"Ellie Day shares why her mission is to help as many underserved people learn to code as possible.\"",
		url: "https://mattermark.com/mattermark-daily-wednesday-may-6th-2015/"
	},
	{
		name: "\"Women Tech Founders take the stage to inspire careers in technology\"",
		description: "\"A diverse group of women packed the room and stage Tuesday night at 1871 as Women Tech Founders shined a light on female entrepreneurs’ stories.\"",
		url: "http://www.chicagotribune.com/bluesky/originals/chi-women-tech-founders-wtf-1871-20150128-story.html"
	},
]
mentions.each do |mention|

	Mention.create(name: mention[:name], description: mention[:description], url: mention[:url])

end

projects = [
	{
		name: "Karmafuse",
		description: "During the 24 hour TechWeek 2015 Hackathon, I created a site called Karmafuse, where you can discover and discuss topics you are passionate about.",
		website: "https://karmafuse.com/"
	},
	{
		name: "Personal Brand",
		description: "Personal Brand is a Ruby on Rails app for managing and displaying one's personal website. In fact, this website is using this open source project!",
		website: "https://github.com/heyellieday/personal-brand"
	},
	{
		name: "Attend",
		description: "Attend is a small web app that allows one to auto-rsvp to multiple, recurring, Eventbrite events. It was created so that I could easily RSVP to many CHI Hacknight events.",
		website: "https://github.com/heyellieday/attend"
	},
	{
		name: "Locationalytics",
		description: "This is the backend for our location-tracking app my team made during the Cisco Internet of Things Hackathon.",
		website: "https://github.com/heyellieday/locationalytics-rails"
	},
	{
		name: "Twitter Lists Tool",
		description: "Homework for my Sprout Social Interview, a Twitter Lists tool, written in Backbone with the help of a Sinatra back-end, RequireJS, jQuery, and a bunch of other goodies.",
		website: "https://github.com/heyellieday/catsg"
	},
	{
		name: "CATSG Theme",
		description: "This is a Wordpress theme for the blog, City and The Single Girl, using tools like Grunt and LESS. ",
		website: "https://github.com/heyellieday/catsg"
	}
]
projects.each do |project|

	Project.create(name: project[:name], description: project[:description], website: project[:website])

end

skills = [
	{
		name: "Web App Development",
		description: "Working with modern web development languages such as Javascript and Ruby, I am able to create robust, scalable web platforms."
	},
	{
		name: "Technical Advising",
		description: "I advise on building web applications from the early planning stages, to the final features. Using my experience building apps for many clients, I know what tools are best for a particular project."
	},
	{
		name: "Front-end Development",
		description: "I use the latest tools and frameworks, such as AngularJS & EmberJS, to craft responsive and interactive web experiences."
	},
	{
		name: "Deployment & Hosting",
		description: "Utilizing reputable cloud services such as Heroku and Codeship, I manage many web applications in a consistent, scalable manner."
	}
]
skills.each do |skill|

	Skill.create(name: skill[:name], description: skill[:description])

end
