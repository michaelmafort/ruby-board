var app = angular.module("app", []);
app.controller('TasksController', ['$http', '$scope', function ($http, $scope) {
    $scope.tasks = {todo: [], inprogress: [], toverify: [], done: []};

    app.run(function ($http) {
        $http.defaults.headers.common.Accept = 'application/json, text/plain, *﻿/﻿*';
    });

    $http({method: 'GET', url: "/tasks.json",})
        .then(function (response) {
            $scope.tasks.todo = response.data.filter(function (elem) {
                return elem.status == 'todo'
            });
            $scope.tasks.inprogress = response.data.filter(function (elem) {
                return elem.status == 'inprogress'
            });
            $scope.tasks.toverify = response.data.filter(function (elem) {
                return elem.status == 'toverify'
            });
            $scope.tasks.done = response.data.filter(function (elem) {
                return elem.status == 'done'
            });
        }, function (err) {
            console.log(err);
        });

    $scope.moveTo = function (index, from, to) {
        var cut = $scope.tasks[from].splice(index, 1);
        $http({
            method: "PUT",
            data: {task: {status: to}, authenticity_token: AUTH_TOKEN},
            url: "/tasks/" + cut[0].id + ".json"
        })
            .then(function (response) {
                console.log(response)
            }, function (err) {
                console.log(err)
            })
        $scope.tasks[to].push(cut[0]);
    };
}]);