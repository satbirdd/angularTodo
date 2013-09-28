angular.module("todos").controller "IndexTodo", ($scope, todoList) ->
	$scope.todos = todoList
	todoList.fetch()