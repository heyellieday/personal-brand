task :update_data => :environment do

	organizations = [
		{
			name: "Keen IO",
			description: "I currently do technical writing and product development for Keen IO, an API-based analytics as a service provider.",
			website: "http://keen.io"
		},
		{
			name: "byp100",
			description: "I work with byp100, an organization for black activists, to build them features such as membership management and SMS-based communication tools.",
			website: "http://amplive.us"
		},
		{
			name: "Amplive",
			description: "Amplive is a livestreaming ad platform. I built the first version of their platform to handle everything from massive analytics to campaign-based billing.",
			website: "http://amplive.us"
		}

	]
	organizations.each do |organization|

		Organization.create(name: organization[:name], description: organization[:description], website: organization[:website])

	end

	achievements = [
		{
			name: "Spoke on a panel about freelancing",
			description: "I joined a panel of freelance developers at Dev Bootcamp in Chicago to discuss what it's really like to freelance.",
			date: "December 2015"
		},
		{
			name: "Launched DivList",
			description: "As a result of working with my White House Fellowship team, DivList, a tool for sharing resources on diverse recruiting, was launched",
			date: "December 2015"
		},
		{
			name: "mRelief Builder launched to the public",
			description: "After building and testing mRelief's eligibility screener builder, it left beta and was released for public use.",
			date: "December 2015"
		},
		{
			name: "Mentor at Startup Weekend Chicago",
			description: "Due to my previous success as a Startup Weekend winner, I was invited to mentor participants in Chicago's Global Startup Battle.",
			date: "November 2015"
		},
		{
			name: "Spoke on my first panel",
			description: "I was invited to speak at General Assembly on the topic of diversity in tech and what steps can be taken to improve it.",
			date: "September 2015"
		},
		{
			name: "mRelief Builder launched in private beta",
			description: "After building a viable product for real-world usage, I helped launch a private beta for mRelief's new Builder product.",
			date: "September 2015"
		},
	]
	achievements.each do |achievement|

		Achievement.create(name: achievement[:name], description: achievement[:description], date: achievement[:date])

	end

	posts = [
		{
			title: "Navigating the complexities of health insurance as a nomadic freelancer",
			subtitle: "It’s common knowledge that having coverage is important, so why don’t more nomadic freelancers have insurance?",
			url: "http://blog.cloudpeeps.com/health-insurance-as-a-nomadic-freelancer/"
		},
		{
			title: "Increasing virality with actionable content analytics",
			subtitle: " In this post, we’ll look at the whole process, from choosing the right metrics to implementing the actual code.",
			url: "https://keen.io/blog/139502564331/how-to-increase-virality-with-actionable-content"
		}
	]
	posts.each do |post|

		Post.create(title: post[:title], subtitle: post[:subtitle], excerpt: post[:subtitle], url: post[:url])

	end

	# mentions = [
	# 	{
	# 		name: "\"Startup Weekend FinTech is a Huge Success in Chicago!\"",
	# 		description: "\"Chicago Startup Weekend FinTech, co-hosted by Startup Weekend Chicago and FinTex Chicago, was a huge success!\"",
	# 		url: "http://blog.up.co/2015/03/10/startup-weekend-fintech-huge-success-chicago/"
	# 	}
	# ]
	# mentions.each do |mention|

	# 	Mention.create(name: mention[:name], description: mention[:description], url: mention[:url])

	# end

	projects = [
		{
			name: "DivList",
			description: "In partnership with the White House and it's annual LGBTQ Tech and Innovation Summit, I created a platform to improve diverse hiring in tech.",
			website: "https://www.divlist.com/"
		},
		{
			name: "bypTime",
			description: "For use by byp100.org and its members, I am continually iterating on a membership and event management platform built to their needs.",
			website: "https://www.byptime.org/"
		},
		{
			name: "bypBlast",
			description: "A usable proof of concept, bypBlast was built to validate the usefulness of text-based communication between byp100.org members and their leaders.",
			website: "https://github.com/heyellieday/bypblast"
		},
	]
	projects.each do |project|

		Project.create(name: project[:name], description: project[:description], website: project[:website])

	end

	skills = [
		{
			name: "Technical Writing",
			description: "Using a special blend of technical and actionable storytelling, I write about various technical topics including analytics and web development."
		},
		{
			name: "Product Development",
			description: "I use my experience building many unique products to create usable and effective experiences."
		}
	]
	skills.each do |skill|

		Skill.create(name: skill[:name], description: skill[:description])

	end

end