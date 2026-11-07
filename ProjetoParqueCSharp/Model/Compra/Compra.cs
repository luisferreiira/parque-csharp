using System;

namespace ProjetoParqueCSharp.Model
{
    public class Compra
    {
        public int codCompra { get; set; }
        public string tipoPagamento { get; set; } = "";
        public DateTime dataCompra { get; set; }
        public int codVisitante { get; set; }
        public int codFuncionario { get; set; }
    }
}
