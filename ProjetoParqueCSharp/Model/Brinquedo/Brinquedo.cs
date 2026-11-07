namespace ProjetoParqueCSharp.Model
{
    public class Brinquedo
    {
        public int codBrinquedo { get; set; }
        public string nomeBrinquedo { get; set; } = "";
        public int capacidadeMaxima { get; set; }
        public int? capacidadeAtual { get; set; }
        public string tipoBrinquedo { get; set; } = "";
        public int idadeRestrita { get; set; }
        public bool? funcionamento { get; set; }
    }
}
