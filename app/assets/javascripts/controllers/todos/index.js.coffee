angular.module("todos").controller "IndexTodo", ($scope, $http, todoList) ->
	$scope.todos = todoList
	todoList.fetch()

	$scope.destroy = (todoId) ->
		$http.delete("/todos/#{todoId}").
		success(->
			collection = todoList.collection
			for todo in collection
				if todo.id is todoId
					index = collection.indexOf(todo)
					collection.splice(index, 1)
		)