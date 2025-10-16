-- Atualizar o status de uma solicitação
UPDATE Solicitacao
SET Status = 'EM ANDAMENTO'
WHERE ID_Solicitacao = 1;

-- Atualizar o status de uma doação
UPDATE Doacao
SET StatusDoacao = 'CONCLUÍDA'
WHERE ID_Doacao = 1;

-- Corrigir o e-mail de um usuário
UPDATE Usuario
SET Email = 'maria.silva@email.com'
WHERE Nome = 'Maria Silva';