Use provasaep;

CREATE TABLE usuario (
    id INTEGER PRIMARY KEY,  -- Adicionado auto-incremento
    nome VARCHAR(100) NOT NULL,           -- Tamanho definido e NOT NULL
    email VARCHAR(255) NOT NULL UNIQUE    -- Tamanho maior e único
);

CREATE TABLE tarefa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_usuario INTEGER NOT NULL,
    descricao VARCHAR(500) NOT NULL,
    nome_setor VARCHAR(50) NOT NULL,
    prioridade VARCHAR(10) NOT NULL
        CHECK (prioridade IN ('baixa', 'média', 'alta')),
    data_cadastro DATE DEFAULT CURRENT_DATE, 
    status VARCHAR(15) NOT NULL
        DEFAULT 'a fazer'
        CHECK (status IN ('a fazer', 'fazendo', 'pronto')),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);