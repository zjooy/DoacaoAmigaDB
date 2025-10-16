-- Tabela de Usuários
CREATE TABLE Usuario (
    ID_Usuario INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    Email VARCHAR(80) UNIQUE NOT NULL,
    Senha VARCHAR(255) NOT NULL,
    ID_TipoUsuario INT NOT NULL,
    DataCadastro DATETIME,
    FOREIGN KEY (ID_TipoUsuario) REFERENCES TipoUsuario(ID_TipoUsuario) ON DELETE CASCADE
);