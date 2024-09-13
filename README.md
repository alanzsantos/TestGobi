# Configuração do Banco
Abra o Visual Studio 2022;

Vá na pasta BancoSQL;

Abra o arquivo Banco.sql e copie tudo;

Abra o SQL Server Management Studio;

Conecte-se no seu servidor;

Clique com o botão direito na pasta Banco de Dados e adicione um novo banco de dados;

Nomeie como BancoGobi e clique em Ok;

Faça uma nova consulta e cole o arquivo que você copiou de Banco.sql;

Clique em executar;

Volte ao Visual Studio 2022;

Abra o appsettings.json e substitua o Data Source, pelo servidor de seu banco SQL Server e salve o arquivo;

Exemplo: "ConnectionStrings": { "DefaultConnection": "Data Source=seu\servidor01;Initial Catalog=Nome_do_banco;Integrated Security=True;Trust Server Certificate=True" }

Abra appsettingss.jsonDevelopment e faça a mesma coisa;

Clique com o botão direito em Connected Services;

Vá em add e depois em SQL Server Database;

Escolha a terceira opção "SQL Server Database" On-premise;

Clique em Next;

Em Connection string name, informe: ConnectionStrings:"DefaultConnection"

Em Connection string value, clique no botão com ...

Escolha Microsoft SQL Server (Microsoft SqlClient) em data source;

Em Server name: informe seu\servidor01;

Em authentication, escolha Windows Authentication;

Marque a opção Trust Server Certificate;

Escolha " BancoGobi " em Select or enter a database name;

E clique em OK; 

Assim o banco estará configurado.

# Execução do projeto
- Clique com botão direito em  Gobi.Tests.Jr.WebApp e vá em Set as Startup Project;
- Compile o projeto;
