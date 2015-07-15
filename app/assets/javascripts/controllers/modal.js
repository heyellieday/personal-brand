app.controller('ModalCtrl', function ($scope, $sce) {

     $scope.sanitize = function(input) {
        return $sce.trustAsHtml(input)
     }
    $scope.ids = [
        {
        	id: 1,
        	name: "Women of Code",
        	bio: "<p>Women of Code is a coding collective that, like my personal mission, aims to make code more inclusive and accessible to all women. Still under active development, I work on women of code as time allows, seeking to grow it organically. If you have any further questions on how you could be a part of this organization, please fill out the contact form on the bottom of this website.</p>",
        	location: "Chicago, IL",
        	url: "http://www.womenofcode.com",
            cover: "images/womenofcodehome.jpg"
    	},
        {
            id: 2,
            name: "Fresh U",
            bio: "<p>Fresh U is an online publication for freshmen, by freshmen.</p><h3>My role:</h3><p>I'm the lead developer for Fresh U. I work on building out their web platform as well as code different architecture for their web needs.</p>",
            location: "Syracuse, NY",
            url: "https://freshu.io",
            cover: "images/apply_now_photo_facebook.png"
        },
        {
            id: 3,
            name: "Freelance Developer + Designer",
            bio: "<p>I've worked on a large variety of projects throughout my time as a freelancer, from Wordpress themes to hybrid mobile applications. There isn't much I can't do in the realm of web and I would love to work with you on your next project. If you're familiar with code, feel free to peruse my Github profile as I tend to make most of my code open source. You can find the link below. If you'd like to see some of my past work, below are some examples:</p>",
            location: "Chicago, IL",
            url: "http://github.com/heyellieday",
            cover: "images/freelance-cover.jpg"
        },
                {
            id: 4,
            name: "Dev Bootcamp",
            bio: "<p>Dev Bootcamp pioneered the short-term immersive 'bootcamp' model which transforms novices into employed web developers. Thier training takes place in-person in San Francisco, New York and Chicago with a 70-90 hour a week project-based curriculum. For the past two years they've iterated and improved their curriculum, which has helped more students land more jobs than any other program.</p><h3>My role:</h3><p>I am an active mentor of Dev Bootcamp students, with weekly pairing sessions, where I go over various issues a student may be working on.</p>",
            location: "Chicago, IL",
            url: "http://www.devbootcamp.com",
            cover: "images/dbc-cover.jpg"
        },
        {
            id: 5,
            name: "Tutoring",
            bio: "One of my favorite things is tutoring others in tech subjects such as programming. Some of the specific things I can help with are Web Development concepts, specific help for languages such as Ruby, HTML, CSS, Javascript and frameworks such as Ruby on Rails and AngularJS, and even helping you learn coding from the beginning. I offer affordable sessions and can meet in person, in Chicago, or over the internet through Google Hangouts. If you are interested, please contact me using the form at the bottom of this website.",
            location: "Chicago, IL",
            url: "http://www.heyellieday/#contact",
            cover: "images/tutoring.jpg"
        },
        {
            id: 6,
            name: "mRelief",
            bio: "<p>Developed in partnership with Mayor Rahm Emanuel’s Innovation Delivery Team, mRelief is a website application that pre-screens eligibility for benefits by assessing whether users meet the income, household size, age, and other basic requirements. mRelief emerged from the Open Government Hack Night that convenes weekly at 1871. Mayor Emanuel’s office presented at a July 2014 meeting, issuing an open call for ideas to bring technology into social services.</p><h3>My role:</h3><p>I act as the technical advisor for mRelief. I work with the team to help plan out application architecture and aid in solving difficult technical challenges.</p>",
            location: "Chicago, IL",
            url: "http://mRelief.com",
            cover: "images/mr-cover.jpg"
        },
        {
            id: 7,
            name: "TransTech",
            bio: "<p>TransTech is a Creative Design firm the creates graphics, web-development, and multi-media production. Their services are offered through a team of professionals, educators and apprentices.</p><h3>My role:</h3><p>I act as a technical advisor for TransTech. I work on the overall tech plan for the organization as well as code and help others as applications are developed.</p>",
            location: "Chicago, IL",
            url: "http://transtechsocial.org",
            cover: "images/tt-cover.jpg"
        },

    ];
  });