export class Todos {
  constructor (items = []) {
    this.items = items
  }

  addTodo ({name, description}) {
    this.items.push({
      name: name,
      description: description,
      completed: false
    })
  }

  removeTodo (index) {
    this.items.splice(index, 1)
  }

  toggleCompletedTodo (index) {
    this.items[index].completed = !this.items[index].completed
  }
}
