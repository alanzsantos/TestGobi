using Gobi.Test.Jr.Domain;
using Gobi.Test.Jr.Domain.Interfaces;

namespace Gobi.Test.Jr.Application
{
    public class TodoItemService
    {
        private readonly ITodoItemRepository _todoItemRepository;

        public TodoItemService(ITodoItemRepository todoItemRepository)
        {
            _todoItemRepository = todoItemRepository;
        }       

        public IEnumerable<TodoItem> GetAll()
        {
            return _todoItemRepository.GetAll()
                .OrderBy(item => item.Finish)
                .ToList();
        }

        public TodoItem GetById(int id)
        {
            return _todoItemRepository.GetById(id);
        }

        public void Add(TodoItem item)
        {
            _todoItemRepository.Add(item);
        }

        public void Update(TodoItem item)
        {
            _todoItemRepository.Update(item);
        }

        public void Delete(int id)
        {
            _todoItemRepository.Delete(id);
        }

    }
}