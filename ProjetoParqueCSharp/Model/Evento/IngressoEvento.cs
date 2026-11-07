namespace ProjetoParqueCSharp.Model
{
    public class IngressoEvento
    {
        public int codIngresso { get; set; }
        public string tipoIngresso { get; set; } = "";
        public decimal valor { get; set; }
        public int? lucroIE { get; set; }
        public int codEventos { get; set; }
    }
}
