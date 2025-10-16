-- Listar todos os usuários com seus tipos
SELECT U.Nome, U.Email, T.Descricao AS TipoUsuario
FROM Usuario U
INNER JOIN TipoUsuario T ON U.ID_TipoUsuario = T.ID_TipoUsuario;

-- Consultar solicitações abertas e suas categorias
SELECT S.ID_Solicitacao, U.Nome AS Solicitante, C.Categoria, S.Descricao, S.Status
FROM Solicitacao S
INNER JOIN Usuario U ON S.ID_Usuario = U.ID_Usuario
INNER JOIN Categoria C ON S.ID_Categoria = C.ID_Categoria
WHERE S.Status = 'ABERTA';

-- Ver todas as doações e seus respectivos beneficiários
SELECT D.ID_Doacao, U.Nome AS Doador, S.Descricao AS Solicitacao, D.StatusDoacao
FROM Doacao D
INNER JOIN Usuario U ON D.ID_Usuario = U.ID_Usuario
INNER JOIN Solicitacao S ON D.ID_Solicitacao = S.ID_Solicitacao;

-- Consultar mensagens trocadas em uma doação
SELECT M.Conteudo, M.DataEnvio, U.Nome AS EnviadoPor
FROM Mensagem M
INNER JOIN Usuario U ON M.ID_Usuario = U.ID_Usuario
WHERE M.ID_Doacao = 1;