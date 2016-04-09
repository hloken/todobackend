using TodoBackend.Controllers;

namespace TodoBackend.TodoList
{
    public class AddTodoCommand
    {
        public TodoItem Item { get; }

        public AddTodoCommand(TodoItem item)
        {
            Item = item;
        }
    }
}