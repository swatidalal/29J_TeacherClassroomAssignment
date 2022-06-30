using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ApiDbLayerTC.Entities
{
    public class ClassRoom
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
        public int Id { get; set; }
        [Column(TypeName = "Varchar(50)")]
        public string? Name { get; set; }
        [Column(TypeName = "Varchar(50)")]

        public Teacher Teacher { get; set; }


    }
}
