@todoApp = todoApp = angular.module("todos", [])

todoApp.factory "todoList", ['$http', ($http) ->
	todoList =
		collection: []
		fetch: () ->
			$http.get('/todos.json').
			success((data) =>
				@collection = data
			).
			error(() ->
				console.error("can't load todo data!")
			)
]

todoApp.config ($routeProvider) ->
	$routeProvider.
		when("/",
			controller: "IndexTodo"
			templateUrl: "/assets/templates/todos/index.html").
		when("/edit/:todoId",
			controller: "EditTodo"
			templateUrl: "/assets/templates/todos/edit.html").
		# when("/destroy/:todoId",
		# 	controller: "DelTodo"
		# 	template: " ").
		when("/new",
			controller: "AddTodo"
			templateUrl: "/assets/templates/todos/new.html")
