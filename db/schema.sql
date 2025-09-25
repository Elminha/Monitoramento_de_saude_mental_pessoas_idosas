CREATE TABLE idosos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    sexo CHAR(1),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE dados_saude (
    id SERIAL PRIMARY KEY,
    id_idoso INT REFERENCES idosos(id),
    data_coleta DATE NOT NULL,
    sono_horas NUMERIC(3,1),
    qualidade_sono INT,
    humor VARCHAR(20),
    atividade_fisica VARCHAR(50),
    frequencia_cardiaca INT,
    observacoes TEXT
);

CREATE TABLE analises_emocionais (
    id SERIAL PRIMARY KEY,
    id_idoso INT REFERENCES idosos(id),
    data_analise TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    risco_emocional VARCHAR(20),
    descricao TEXT
);

CREATE TABLE recomendacoes (
    id SERIAL PRIMARY KEY,
    id_idoso INT REFERENCES idosos(id),
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    recomendacao VARCHAR(100),
    tipo_risco VARCHAR(20),
    observacoes TEXT
);
