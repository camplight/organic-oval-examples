<todo-form>
  <script>
    tag.addTodo = function (e) {
      e.preventDefault()
      tag.props.addTodo({
        name: tag.refs.todoName.value,
        description: tag.refs.todoDescription.value
      })
      tag.refs.todoName.value = ''
      tag.refs.todoDescription.value = ''
    }
  </script>
  <div>
    <h2>Create Todo</h2>
    <div class="panel panel-default">
      <div class="panel-body clearfix">
        <form onsubmit={tag.addTodo} class="form" autocomplete="off">
          <div class="form-group">
            <label for="todoNameInput">Todo Name</label>
            <input ref="todoName" id="todoNameInput" type="text" class="form-control" />
          </div>
          <div class="form-group">
            <label for="todoDescriptionInput">Todo Description</label>
            <textarea ref="todoDescription" id="todoDescriptionInput" class="form-control"></textarea>
          </div>
          <button type="submit" name="button" class="btn btn-sm btn-primary pull-right">Create Todo</button>
        </form>
      </div>
    </div>
  </div>
</todo-form>
