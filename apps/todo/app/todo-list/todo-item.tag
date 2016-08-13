<todo-item>
  <script>
    tag.injectDirectives({
      'parse-paragraphs': require('../directives/parse-paragraphs')
    })
  </script>
  <div class={tag.props.todo.completed ? 'panel panel-success text-success' : 'panel panel-default'}>
    <div class="panel-body">
      <h3>{tag.props.todo.name}</h3>
      <div parse-paragraphs>
        {tag.props.todo.description}
      </div>
    </div>
    <div class="panel-heading">
      <div class="btn-group">
        <button type="button" class="btn btn-sm btn-success" onclick={tag.props.toggleCompletedTodo}>{tag.props.todo.completed ? 'Mark Not Done' : 'Mark Done'}</button>
        <button type="button" class="btn btn-sm btn-danger" onclick={tag.props.removeTodo}>Remove</button>
      </div>
    </div>
  </div>
</todo-item>
