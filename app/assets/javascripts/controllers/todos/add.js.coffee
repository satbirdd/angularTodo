angular.module("todos").controller "AddTodo", ($scope, $http, $location, todoList) ->
	$scope.save = ()->
		$http.post("/todos", $scope.todo).
			success((data)->
				todoList.collection.push(data)
				$location.path("/")
			)