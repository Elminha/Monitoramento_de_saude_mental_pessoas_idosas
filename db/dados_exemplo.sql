INSERT INTO idosos (nome, idade, sexo) VALUES 
('João Silva', 70, 'M'),
('Maria Oliveira', 75, 'F');

INSERT INTO dados_saude (id_idoso, data_coleta, sono_horas, qualidade_sono, humor, atividade_fisica, frequencia_cardiaca)
VALUES
(1, '2025-09-24', 7.5, 4, 'positivo', 'moderada', 72),
(2, '2025-09-24', 6.0, 3, 'negativo', 'leve', 80);

INSERT INTO analises_emocionais (id_idoso, risco_emocional, descricao)
VALUES
(1, 'baixo', 'Humor positivo e sono adequado'),
(2, 'moderado', 'Sono ruim e humor negativo');

INSERT INTO recomendacoes (id_idoso, recomendacao, tipo_risco)
VALUES
(1, 'Ouvir música relaxante', 'baixo'),
(2, 'Caminhada leve e respiração profunda', 'moderado');
