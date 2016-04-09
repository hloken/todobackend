using System.Collections.Generic;
using System.Threading.Tasks;
using Akka.Actor;
using TodoBackend.TodoList;

namespace TodoBackend.Controllers
{
    using System.Web.Http;

    public class TodosController : ApiController
    {
        public static ActorSystem ActorSystem { get; private set; }

        public TodosController() 
        {
            ActorSystem = ActorSystem.Create("MySystem");
        }
        
        public async Task<IHttpActionResult> Get()
        {
            var todoListActor = ActorSystem.ActorOf<TodoListActor>();

            var items = (await todoListActor.Ask<IEnumerable<TodoItem>>(new GetAllCommand()));

            return this.Ok(items);
        }

        public IHttpActionResult Get(int id)
        {
            var todoListActor = ActorSystem.ActorOf<TodoListActor>();

            var todoItem = await todoListActor.Ask<GetTodoByIdCommand>(new GetTodoByIdCommand(id));

            return this.Ok(new TodoItem());
        }

        public async Task<IHttpActionResult> Post(TodoItem item)
        {
            var todoListActor = ActorSystem.ActorOf<TodoListActor>();

            var createdItem = await todoListActor.Ask<TodoItem>(new AddTodoCommand(item));
            var url = this.Request.RequestUri + $"/{createdItem.id}";

            return Created(url, createdItem);
        }

        public IHttpActionResult Patch(int id, TodoItem patch)
        {
            return this.Ok(new TodoItem());
        }

        public IHttpActionResult Delete()
        {
            return this.Ok();
        }

        public IHttpActionResult Delete(int id)
        {
            return this.Ok();
        }
    }
}