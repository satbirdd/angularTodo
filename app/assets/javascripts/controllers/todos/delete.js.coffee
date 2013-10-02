angular.module("todos").controller "DelTodo", ($http, $location, $routeParams, todoList) ->
	todoId = $routeParams.todoId

	$http.delete("/todos/#{todoId}").
		success(->
			for todo in todoList
				if todoList[i].id.toString() is todoId
					index = todoList.indexOf(todo)
					todoList.aplice(index, 1)
		)