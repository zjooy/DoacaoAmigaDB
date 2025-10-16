-- Tabela de Solicitações
CREATE TABLE Solicitacao (
    ID_Solicitacao INT IDENTITY(1,1) PRIMARY KEY,
    ID_Usuario INT NOT NULL,
    ID_Categoria INT NOT NULL,
    Descricao TEXT NOT NULL,
    DataSolicitacao DATETIME,
    Status VARCHAR(20) DEFAULT 'ABERTA',
    DataLimite DATE,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario) ON DELETE CASCADE,
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria)
);