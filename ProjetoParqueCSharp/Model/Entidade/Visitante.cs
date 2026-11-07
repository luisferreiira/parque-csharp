using System;

namespace ProjetoParqueCSharp.Model
{
    public class Visitante
    {
        public int codVisitante { get; set; }
        public string nomeVisitante { get; set; } = "";
        public DateTime dataNascimento { get; set; }
        public string? email { get; set; }
        public string? senha { get; set; }
    }
}
