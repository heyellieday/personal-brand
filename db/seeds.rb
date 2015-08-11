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
		description: "Juiced Magazine is a publication at Syracuse University in New York. In 2013, I helped them launch their first online publication and have since rebuilt their site to improve existing functionality",
		website: "http://juicedmag.org"
	}
]
organizations.each do |organization|

	Organization.create(name: organization[:name], description: organization[:description], website: organization[:website])

end