using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using Akka.Actor;
using Akka.Util.Internal;
using TodoBackend.Controllers;
using TodoBackend.TodoList.Todo;

namespace TodoBackend.TodoList
{
    public class TodoListActor : ReceiveActor
    {
        private int _theCounter = 0;

        public TodoListActor()
        {
            ReceiveAsync<AddTodoCommand>(async addTodo =>
            {
                var newTodoActor = Context.ActorOf<TodoActor>();
                var newItem = await newTodoActor.Ask( new TodoCreatedEvent(_theCounter++, addTodo.Item));

                Sender.Tell(newItem);
            });
            
            ReceiveAsync<GetAllCommand>(async getAll =>
            {
                var actorRefs = Context.GetChildren().ToList();

                var todoTasks = from todoActor in actorRefs
                    select todoActor.Ask<TodoItem>(new GetTodoCommand());

                var todos = (await Task.WhenAll(
                    todoTasks));

                Sender.Tell(todos);
            });
        }
    }
}