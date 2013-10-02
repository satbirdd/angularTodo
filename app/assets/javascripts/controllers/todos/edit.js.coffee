angular.module("todos").controller "EditTodo", ($scope, $routeParams, $http, $location, todoList) ->
	todoId = $routeParams.todoId
	for todo in todoList.collection
		if todo.id.toString() is todoId
			$scope.todo = todo
			break

	$scope.save = ->
		$http.put("/todos/#{ $scope.todo.id }", $scope.todo).
			success(-> $location.path('/'))

	$scope.cancel = ->
		$location.path('/')
