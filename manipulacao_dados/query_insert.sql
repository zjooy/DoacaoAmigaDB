-- Inserções iniciais
INSERT INTO TipoUsuario (Descricao) VALUES ('DOADOR'), ('BENEFICIARIO');

INSERT INTO Categoria (Categoria) VALUES ('Roupas'), ('Alimentos'), ('Livros'), ('Material Escolar'), ('Kit de Higiene'), ('Cesta Básica');

-- Inserindo Usuários
INSERT INTO Usuario (Nome, Email, Senha, ID_TipoUsuario, DataCadastro)
VALUES 
('Maria Silva', 'maria@email.com', '123456', 1, GETDATE()),  -- Doadora
('João Santos', 'joao@email.com', 'abcdef', 2, GETDATE());   -- Beneficiário

-- Inserindo Solicitações
INSERT INTO Solicitacao (ID_Usuario, ID_Categoria, Descricao, DataSolicitacao, Status, DataLimite)
VALUES 
(2, 1, 'Preciso de roupas de frio', GETDATE(), 'ABERTA', '2025-12-31');

-- Inserindo Doações
INSERT INTO Doacao (ID_Usuario, ID_Solicitacao, StatusDoacao)
VALUES 
(1, 1, 'AGUARDANDO');

-- Inserindo Mensagens
INSERT INTO Mensagem (ID_Doacao, ID_Usuario, Conteudo, DataEnvio)
VALUES 
(1, 1, 'Olá! Tenho roupas disponíveis para doação.', GETDATE()),
(1, 2, 'Perfeito! Agradeço pela ajuda!', GETDATE());