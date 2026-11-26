using System.Collections.Generic;

namespace ProjetoParqueCSharp.Model
{
    public class Sacola
    {
        // guarda itens compra
        public List<ItemSacola> itens { get; set; }

        public Sacola()
        {
            // instancia nova iniciar
            itens = new List<ItemSacola>();
        }
    }
}
