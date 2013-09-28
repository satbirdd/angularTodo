angular.module("todos").controller "EditTodo", ($scope, $routeParams, todoList) ->
	todoId = $routeParams.todoId
	for todo in todoList.collection
		if todo.id.toString() is todoId
			$scope.todo = todo
			break