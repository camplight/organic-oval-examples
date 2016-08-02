<todo-list>
  <script>
    require('./todo-item')
    tag.removeTodo = function (todoIndex) {
      return function (e) {
        if (e) {
          e.preventDefault()
        }
        tag.props.todos.removeTodo(todoIndex)
        tag.update()
      }
    }

    tag.toggleCompletedTodo = function (todoIndex) {
      return function (e) {
        if (e) {
          e.preventDefault()
        }
        tag.props.todos.toggleCompletedTodo(todoIndex)
        tag.update()
      }
    }

    tag.deleteCompleted = function () {
      tag.props.todos.items = tag.props.todos.items.filter(function (todo) {
        return !todo.completed
      })
      tag.update()
    }

    tag.hasCompletedTodos = function () {
      return tag.props.todos.items.filter((t) => t.completed).length
    }

  </script>
  <div>
    <h2>Todos <small>({tag.props.todos.items.length})</small></h2>

    <button if={tag.hasCompletedTodos()} type="button" class="btn btn-sm btn-default" style="margin-bottom: 10px;" onclick={tag.deleteCompleted}>
      Delete Done
    </button>

    <each todo, index in {tag.props.todos.items}>
      <todo-item
        id={'todo' + index}
        prop-todo={todo}
        prop-toggleCompletedTodo={tag.toggleCompletedTodo(index)}
        prop-removeTodo={tag.removeTodo(index)} />
    </each>

    <div class="alert alert-info" if={!tag.props.todos.items.length}>
      There are no todos created.
    </div>
  </div>
</todo-list>
