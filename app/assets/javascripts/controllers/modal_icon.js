app.controller('ModalIconCtrl', function ($scope) {

    $scope.showModal = function(id) {
        $('#portfolioModal'+id).modal('show');
    }
    $scope.rowsOfOrgs = [
        [
            {
                id: 1,
                title: "Founder",
                org: "Women of Code",
                url: "images/womenofcode.jpg"
            },
            {
                id: 2,
                title: "Lead Developer",
                org: "Fresh U",
                url: "images/freshu.png"
            },
            {
                id: 3,
                title: "Freelance Developer",
                org: "HeyEllieDay",
                url: "images/freelance.jpg"
            }
        ],
    ];
    $scope.rowsOfProjects = [
        [
            {
                id: 4,
                title: "Mentor",
                org: "Dev Bootcamp",
                url: "images/dbc.jpg"
            },
            {
                id: 5,
                title: "",
                org: "Tutoring",
                url: "images/tutoring.jpg"
            },
            {
                id:6,
                title: "Technical Advisor",
                org: "mRelief",
                url: "images/mrelief.jpg"
            },
            {
                id: 7,
                title: "Technical Advisor",
                org: "TransTech",
                url: "images/transtech.jpg"
            },
        ],

    ];
  });