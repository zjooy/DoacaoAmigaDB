-- Tabela de Tipos de Usuário
CREATE TABLE TipoUsuario (
    ID_TipoUsuario INT IDENTITY(1,1) PRIMARY KEY,
    Descricao VARCHAR(50) NOT NULL UNIQUE
);