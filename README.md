# 📝 TestGobi - To-Do List App

**Uma aplicação web de Lista de Tarefas (To-Do List) desenvolvida como um teste técnico de CRUD completo. O projeto implementa operações de criação, leitura, atualização e exclusão de tarefas de forma performática e estruturada.**

---

## 🚀 Tecnologias Utilizadas

* **Back-End:** .NET / C# (ASP.NET Core MVC)
* **Banco de Dados:** SQL Server (Persistência e modelagem relacional)
* **Front-End:** Razor Views, HTML5, CSS3 e JavaScript para interatividade

---

## 🛠️ Configuração do Banco de Dados

Siga o passo a passo abaixo para configurar o ambiente do banco local:

1. Abra o **Visual Studio 2022**.
2. Vá até a pasta `BancoSQL`, abra o arquivo `Banco.sql` e copie todo o seu conteúdo.
3. Abra o **SQL Server Management Studio (SSMS)** e conecte-se ao seu servidor.
4. Clique com o botão direito na pasta *Banco de Dados*, selecione *Novo Banco de Dados*, nomeie como **BancoGobi** e clique em OK.
5. Abra uma *Nova Consulta* (New Query), cole o script copiado do `Banco.sql` e clique em **Executar**.
6. Volte ao Visual Studio, abra o arquivo `appsettings.json` e substitua o valor do `Data Source` pelo nome do seu servidor local do SQL Server.
   ```json
   "ConnectionStrings": { 
     "DefaultConnection": "Data Source=SEU_SERVIDOR;Initial Catalog=BancoGobi;Integrated Security=True;Trust Server Certificate=True" 
   }
   ```
7. Repita o mesmo processo de configuração da string de conexão no arquivo `appsettings.Development.json`.
8. Clique com o botão direito em **Connected Services** > **Add** > **SQL Server Database**.
9. Escolha a opção *SQL Server Database (On-premise)* e clique em Next.
10. Em *Connection string name*, informe: `ConnectionStrings:"DefaultConnection"`.
11. Em *Connection string value*, clique no botão `...`, selecione *Microsoft SQL Server*, defina a autenticação como *Windows Authentication*, marque *Trust Server Certificate*, escolha o **BancoGobi** e clique em OK.

---

## 🏃‍♂️ Execução do Projeto

Com o banco de dados devidamente conectado:

1. Clique com o botão direito sobre o projeto **Gobi.Tests.Jr.WebApp** na Solução.
2. Selecione a opção **Set as Startup Project** (Definir como Projeto de Inicialização).
3. Compile (Build) e execute o projeto pressionando `F5` ou clicando no botão de *Play* do Visual Studio.

---

## 📌 Funcionalidades do CRUD
* **Criar Tarefa:** Adição de novas pendências à lista.
* **Listar Tarefas:** Visualização dinâmica de todas as tarefas armazenadas.
* **Atualizar Tarefa:** Edição de informações ou alteração de status (Concluída/Pendente).
* **Excluir Tarefa:** Remoção definitiva do registro no banco de dados.
