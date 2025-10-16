-- Tabela de Mensagens
CREATE TABLE Mensagem (
    ID_Mensagem INT IDENTITY(1,1) PRIMARY KEY,
    ID_Doacao INT NOT NULL,
    ID_Usuario INT NOT NULL,
    Conteudo TEXT NOT NULL,
    DataEnvio DATETIME,
    FOREIGN KEY (ID_Doacao) REFERENCES Doacao(ID_Doacao) ON DELETE CASCADE,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario)
);