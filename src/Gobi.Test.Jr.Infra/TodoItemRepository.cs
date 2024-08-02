using Gobi.Test.Jr.Domain;
using Gobi.Test.Jr.Domain.Interfaces;


namespace Gobi.Test.Jr.Infra
{
    public class TodoItemRepository : ITodoItemRepository
    {

        private readonly AppGobiDbContext _context;

        public TodoItemRepository(AppGobiDbContext context)
        {
            _context = context;
        }


        public IEnumerable<TodoItem> GetAll()
        {
            return _context.TodoItems.OrderBy(item => item.Finish).ToList();
        }

        public TodoItem GetById(int id)
        {
            return _context.TodoItems.Find(id);
        }

        public void Add(TodoItem item)
        {
            _context.TodoItems.Add(item);
            _context.SaveChanges();
        }

        public void Update(TodoItem item)
        {
            _context.TodoItems.Update(item);
            _context.SaveChanges();
        }

        public void Delete(int id)
        {
            var item = _context.TodoItems.Find(id);
            if (item != null)
            {
                _context.TodoItems.Remove(item);
                _context.SaveChanges();
            }
        }
    }
}
