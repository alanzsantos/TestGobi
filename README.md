#klerion

IF CPF = '00000000000' OR CPF = '11111111111' OR CPF = '22222222222' OR CPF = '33333333333' OR CPF = '44444444444' OR CPF = '55555555555' OR CPF = '66666666666' OR CPF = '77777777777' OR CPF = '88888888888' OR CPF = '99999999999'
    MESSAGE('CPF inválido. Não é permitido usar todos os dígitos iguais.', 'Erro de Validação', ICON:Hand)
    CYCLE   ! impede que o registro seja salvo
END

! Embed: Before Generated
DATA
    STRING CNPJFormatado
    BYTE Soma, Peso, Resto, DV1, DV2
    BYTE i

! Remover caracteres não numéricos do CNPJ (pontos, barras e traços)
CNPJFormatado = ''
LOOP i = 1 TO LEN(CNPJ)
  IF INSTRING(SUB(CNPJ,i,1), '0123456789', 1, 1)
    CNPJFormatado = CLIP(CNPJFormatado) & SUB(CNPJ,i,1)
  END
END

! Verificar se o CNPJ tem exatamente 14 dígitos
IF LEN(CNPJFormatado) <> 14
  MESSAGE('CNPJ inválido. Deve conter 14 dígitos.', 'Erro de Validação', ICON:Hand)
  CYCLE  ! Impede o salvamento
END

! Verificar se todos os dígitos são iguais
IF CNPJFormatado = '00000000000000' OR CNPJFormatado = '11111111111111' OR CNPJFormatado = '22222222222222' OR CNPJFormatado = '33333333333333' OR CNPJFormatado = '44444444444444' OR CNPJFormatado = '55555555555555' OR CNPJFormatado = '66666666666666' OR CNPJFormatado = '77777777777777' OR CNPJFormatado = '88888888888888' OR CNPJFormatado = '99999999999999'
  MESSAGE('CNPJ inválido. Não pode conter todos os dígitos iguais.', 'Erro de Validação', ICON:Hand)
  CYCLE  ! Impede o salvamento
END

! Cálculo do primeiro dígito verificador (DV1)
Soma = 0
Peso = 5
LOOP i = 1 TO 12
  Soma += (BYTE(SUB(CNPJFormatado,i,1)) - 48) * Peso
  Peso -= 1
  IF Peso < 2 THEN Peso = 9 END
END
Resto = Soma % 11
IF Resto < 2 THEN DV1 = 0 ELSE DV1 = 11 - Resto END

! Cálculo do segundo dígito verificador (DV2)
Soma = 0
Peso = 6
LOOP i = 1 TO 13
  Soma += (BYTE(SUB(CNPJFormatado,i,1)) - 48) * Peso
  Peso -= 1
  IF Peso < 2 THEN Peso = 9 END
END
Resto = Soma % 11
IF Resto < 2 THEN DV2 = 0 ELSE DV2 = 11 - Resto END

! Comparar os dígitos verificadores calculados com os informados no CNPJ
IF DV1 <> (BYTE(SUB(CNPJFormatado,13,1)) - 48) OR DV2 <> (BYTE(SUB(CNPJFormatado,14,1)) - 48)
  MESSAGE('CNPJ inválido. Dígitos verificadores incorretos.', 'Erro de Validação', ICON:Hand)
  CYCLE  ! Impede o salvamento
END



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
