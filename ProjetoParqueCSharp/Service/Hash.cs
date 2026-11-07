using System;

namespace ProjetoParqueCSharp.Service
{
    public static class Hash
    {
        public static string CriarHash(string senha)
        {
            if (string.IsNullOrWhiteSpace(senha))
            {
                throw new ArgumentException("A senha não pode estar vazia.");
            }

            return BCrypt.Net.BCrypt.HashPassword(senha);
        }

        public static bool VerificarSenha(string senhaDigitada,string senhaHash)
        {
            if (string.IsNullOrWhiteSpace(senhaDigitada))
            {
                return false;
            }

            if (string.IsNullOrWhiteSpace(senhaHash))
            {
                return false;
            }

            return BCrypt.Net.BCrypt.Verify(senhaDigitada,senhaHash);
        }
    }
}