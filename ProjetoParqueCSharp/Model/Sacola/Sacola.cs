using System.Collections.Generic;

namespace ProjetoParqueCSharp.Model
{
    public class Sacola
    {
        public List<ItemSacola> itens { get; set; }

        public Sacola()
        {
            itens = new List<ItemSacola>();
        }
    }
}
