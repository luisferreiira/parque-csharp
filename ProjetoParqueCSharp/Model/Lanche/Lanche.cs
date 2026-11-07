namespace ProjetoParqueCSharp.Model
{
    public class Lanche
    {
        public int codLanche { get; set; }
        public string nomeLanche { get; set; } = "";
        public decimal precoLanche { get; set; }
        public string? descricao { get; set; }
        public int? lucroLanches { get; set; }
        public int codCategoria { get; set; }
    }
}
