using System;
using System.Collections.Generic;

namespace sistemaweb.Models
{
    public partial class Producto
    {
        public int IdProducto { get; set; }
        public int IdCategoria { get; set; }
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public decimal PrecioVenta { get; set; }
        public int Stock { get; set; }
        public string Decripcion { get; set; }
        public bool? Estado { get; set; }

        public virtual Categoria IdCategoriaNavigation { get; set; }
    }
}
