using System.Drawing;
using System.IO;

namespace ProjetoParqueCSharp.Forms;

internal static class IdentidadeVisual
{
    internal static Icon Icone { get; } = CarregarIcone();
    internal static Image LogoMenu { get; } = CarregarLogo();

    private static Icon CarregarIcone()
    {
        using var arquivo = AbrirRecurso("ProjetoParqueCSharp.parque.ico");
        return new Icon(arquivo);
    }

    private static Image CarregarLogo()
    {
        using var arquivo = AbrirRecurso("ProjetoParqueCSharp.logo_parque.png");
        using var imagem = Image.FromStream(arquivo);
        return new Bitmap(imagem);
    }

    private static Stream AbrirRecurso(string nome)
    {
        return typeof(IdentidadeVisual).Assembly.GetManifestResourceStream(nome)
            ?? throw new InvalidOperationException($"Recurso não encontrado: {nome}");
    }
}
