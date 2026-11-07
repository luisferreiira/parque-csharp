using System;

namespace ProjetoParqueCSharp.Model
{
    public class Evento
    {
        public int codEventos { get; set; }
        public string nomeEvento { get; set; } = "";
        public string tipoEvento { get; set; } = "";
        public string localEvento { get; set; } = "";
        public DateTime dataInicio { get; set; }
        public DateTime dataFim { get; set; }
        public string? descricao { get; set; }
    }
}
