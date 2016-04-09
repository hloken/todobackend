using System;
using Akka.Actor;

namespace TodoBackend.TodoList.Todo
{
    public class PersistTodoActor : ReceiveActor
    {
        public PersistTodoActor()
        {
            Receive<TodoCreatedEvent>(addTodo =>
                Console.WriteLine("Yeah"));
        }
    }
}