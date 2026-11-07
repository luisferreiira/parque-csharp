using System;

namespace ProjetoParqueCSharp.Model
{
    public class Funcionario
    {
        public int codFuncionario { get; set; }
        public string nomeFuncionario { get; set; } = "";
        public string cpf { get; set; } = "";
        public string carteiraTrabalho { get; set; } = "";
        public DateTime dataAdmissao { get; set; }
        public DateTime? dataDemissao { get; set; }
        public string? email { get; set; }
        public string? senha { get; set; }
        public int codCargo { get; set; }
    }
}
