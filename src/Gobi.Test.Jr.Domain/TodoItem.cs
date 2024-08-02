using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Gobi.Test.Jr.Domain
{
	[Table("TodoItem")]
	public class TodoItem
    {
        public int Id { get; set; }

        [Required]
        public string Description { get; set; }

        public string Status { get; set; }

        public bool Completed { get; set; }

        public bool Finish { get; set; }
    }
}