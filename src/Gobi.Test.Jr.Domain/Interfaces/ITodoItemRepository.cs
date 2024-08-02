namespace Gobi.Test.Jr.Domain.Interfaces
{
    public interface ITodoItemRepository
    {
        IEnumerable<TodoItem> GetAll();
        TodoItem GetById(int id);
        void Add(TodoItem item);
        void Update(TodoItem item);

        void Delete(int id);
    }
}
