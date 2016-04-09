using Akka.Actor;
using TodoBackend.Controllers;

namespace TodoBackend.TodoList.Todo
{
    public class TodoActor : ReceiveActor
    {
        private int _id;
        private TodoItem _item;

        public TodoActor()
        {
            Receive<TodoCreatedEvent>(e =>
            {
                CreateTodo(e);
                Sender.Tell(_item);
            });

            Receive<GetTodoCommand>(c =>
            {
                Sender.Tell(_item);
            });
        }

        private void CreateTodo(TodoCreatedEvent e)
        {
            _id = e.Id;
            _item = e.Item;
        }
    }
}