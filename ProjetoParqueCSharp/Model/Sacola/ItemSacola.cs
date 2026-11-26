namespace ProjetoParqueCSharp.Model
{
    public class ItemSacola
    {
        // item catalogo compra
        public string tipoItem { get; set; } = "";
        public int codItem { get; set; }
        public string descricaoItem { get; set; } = "";
        public decimal valorUnitario { get; set; }
        public int quantidade { get; set; }
        public decimal subtotal { get; set; }
    }
}
