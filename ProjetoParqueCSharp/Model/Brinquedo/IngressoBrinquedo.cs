namespace ProjetoParqueCSharp.Model
{
    public class IngressoBrinquedo
    {
        public int codIngresso { get; set; }
        public string tipoIngresso { get; set; } = "";
        public decimal valor { get; set; }
        public int? lucroIB { get; set; }
        public int codBrinquedo { get; set; }
    }
}
