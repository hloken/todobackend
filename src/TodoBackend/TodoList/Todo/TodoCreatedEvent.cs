using TodoBackend.Controllers;

namespace TodoBackend.TodoList.Todo
{
    public class TodoCreatedEvent
    {
        public TodoItem Item { get; }
        public int Id { get; }

        public TodoCreatedEvent(int id, TodoItem item)
        {
            Item = item;
            Id = id;
        }
    }
}