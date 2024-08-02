using Gobi.Test.Jr.Application;
using Gobi.Test.Jr.Domain;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Gobi.Tests.Jr.WebApp.Controllers
{	

	public class TodoController : Controller
    {
        private readonly TodoItemService _todoItemService;

        public TodoController(TodoItemService todoItemService)
        {
            _todoItemService = todoItemService;
        }

		public IActionResult Index()
        {
            var items = _todoItemService.GetAll()
                .OrderBy(item => item.Completed)
                .ThenBy(item => item.Finish) 
                .ToList();

            return View(items);
        }

        public IActionResult Add()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Add(TodoItem item)
        {
            if (ModelState.IsValid)
            {
                _todoItemService.Add(item);
                return RedirectToAction(nameof(Index));
            }
            return View();
        }

        public IActionResult Edit(int id)
        {
            var item = _todoItemService.GetById(id);
            if (item == null)
            {
                return NotFound();
            }
            return View(item);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(TodoItem item)
        {
            if (ModelState.IsValid)
            {
                _todoItemService.Update(item);
                return RedirectToAction(nameof(Index));
            }
            return View(item);
        }

        public IActionResult Delete(int id)
        {
            var item = _todoItemService.GetById(id);
            if (item == null)
            {
                return NotFound();
            }
            return View(item);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            _todoItemService.Delete(id);
            return RedirectToAction(nameof(Index));
        }
    }

}
