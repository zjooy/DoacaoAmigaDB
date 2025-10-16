-- Tabela de Doações
CREATE TABLE Doacao (
    ID_Doacao INT IDENTITY(1,1) PRIMARY KEY,
    ID_Usuario INT NOT NULL,
    ID_Solicitacao INT NOT NULL,
    DataDoacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    StatusDoacao VARCHAR(20) DEFAULT 'AGUARDANDO',
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Solicitacao) REFERENCES Solicitacao(ID_Solicitacao) ON DELETE CASCADE
);