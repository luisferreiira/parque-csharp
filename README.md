# Projeto Parque

Projeto acadêmico em C# para a gestão de um parque de diversões. A aplicação desktop reúne a base para consultar visitantes e atrações e registrar vendas de ingressos e lanches no MySQL.

## O que já foi implementado

- **Modelos de domínio** — visitantes, funcionários, brinquedos, eventos, ingressos, lanches, categorias, compras e itens da sacola.
- **Acesso a dados** — teste de conexão com o MySQL, busca de visitantes, consulta de funcionário por e-mail, listagem de atrações, ingressos, lanches e compras, além da gravação de compras e seus itens.
- **Senhas** — geração de hash e verificação de senhas com BCrypt.
- **Banco de dados** — tabelas, procedures de cadastro e consulta, relatórios de compras e triggers para auditoria, restrição de idade, capacidade de brinquedos e cálculos de valores.
- **Interface** — janela inicial em Windows Forms. As telas de login e o fluxo de venda ainda precisam ser ligados à interface.

## Como executar

Use o Windows com o SDK do .NET 10 e uma instância do MySQL.

1. Importe [banco/schema.sql](banco/schema.sql) em uma instância de desenvolvimento para criar o banco `projeto_parque` e carregar os dados iniciais.
2. A conexão usa o MySQL em `localhost:3307`. Se sua instância tiver outra configuração, ajuste a string de conexão em [DAO/Connection.cs](ProjetoParqueCSharp/DAO/Connection.cs).

3. Na raiz do repositório, execute o projeto.

   ```powershell
   dotnet run --project ProjetoParqueCSharp/ProjetoParqueCSharp.csproj
   ```

Também é possível abrir `ProjetoParqueCSharp/ProjetoParqueCSharp.slnx` no Visual Studio com a carga de trabalho de desenvolvimento para desktop com .NET.
