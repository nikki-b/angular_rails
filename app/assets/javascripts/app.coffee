template_app = angular.module('template_app',[
  'templates',
  'ngRoute',
  'controllers',
])

template_app.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'StudentsController'
      )
])

students = [
  {
    id: 1
    name: 'Harry Potter'
  },
  {
    id: 2
    name: 'Hermione Granger',
  },
  {
    id: 3
    name: 'Ron Weasley',
  },
  {
    id: 4
    name: 'Neville Longbottom',
  },
  {
    id: 5
    name: 'Luna Lovegood',
  },
  {
    id: 6
    name: 'Dean Thomas',
  },
  {
    id: 7
    name: 'Seamus Finnegan',
  },
  {
    id: 8
    name: 'Draco Malfoy',
  },
  {
    id: 9
    name: 'Blaise Zabini',
  },
  {
    id: 10
    name: 'Vincent Crabbe',
  },
  {
    id: 11
    name: 'Cho Chang',
  },
  {
    id: 12
    name: 'Cedric Diggory',
  },
  {
    id: 13
    name: 'Fred Weasley',
  },
  {
    id: 14
    name: 'George Weasley',
  },
  {
    id: 15
    name: 'Ginny Weasley',
  },
  {
    id: 16
    name: 'Percy Weasley',
  }
]
controllers = angular.module('controllers',[])
controllers.controller("StudentsController", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->
    $scope.search = (keywords)->  $location.path("/").search('keywords',keywords)

    if $routeParams.keywords
      keywords = $routeParams.keywords.toLowerCase()
      $scope.students = students.filter (student)-> student.name.toLowerCase().indexOf(keywords) != -1
    else
      $scope.students = []
])