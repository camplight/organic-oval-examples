<app>
  <script>
    require('./todo-list')
    require('./todo-form')
    var Todos = require('./models').Todos
    tag.keepParentTag = false
    tag.todos = new Todos([])
    tag.addTodo = function (name) {
      tag.todos.addTodo(name)
      tag.update()
    }
  </script>
  <div>
    <todo-form prop-addTodo={tag.addTodo}></todo-form>
    <todo-list prop-todos={tag.todos}></todo-list>
  </div>
</app>
