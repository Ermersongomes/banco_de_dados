create schema sistAerobd;

use sistAerobd;

create table Companhias(
	cnpj VARCHAR(18) NOT NULL,
    nome VARCHAR(300) NOT NULL,
    contato VARCHAR(300),
    PRIMARY KEY (cnpj)
);

create table  Aeroportos(
	idAeroporto INT NOT NULL AUTO_INCREMENT,
    nome  VARCHAR(300) NOT NULL,
    endereco VARCHAR(300),
    PRIMARY KEY (idAeroporto)
);

create table Passageiros(
	cpf VARCHAR(14) NOT NULL,
    nome VARCHAR(300) NOT NULL,
    telefone VARCHAR(14) NOT NULL,
    email VARCHAR(300) NOT NULL,
    passaporte VARCHAR(8) NOT NULL,
    dataNascimento DATE NOT NULL,
    PRIMARY KEY (cpf)
);

create table Voos(
	numeroVoo INT NOT NULL AUTO_INCREMENT,
    dataHoraEmbarque DATETIME NOT NULL,
    dataHoraDesembarque DATETIME NOT NULL,
    portalEmbarque VARCHAR(2) NOT NULL,
    portalDesembarque VARCHAR(2) NOT NULL,
    terminalEmbarque INT NOT NULL,
    terminalDesembarque INT NOT NULL,
	fk_idAeroporto_origem INT NOT  NULL,
    fk_idAeroporto_destino INT NOT NULL,
    fk_cnpj VARCHAR(18) NOT NULL,
    PRIMARY KEY (numeroVoo),
    FOREIGN KEY (fk_idAeroporto_origem) REFERENCES Aeroportos  (idAeroporto),
    FOREIGN KEY (fk_idAeroporto_destino) REFERENCES Aeroportos (idAeroporto),
    FOREIGN KEY (fk_cnpj ) REFERENCES Companhias (cnpj)
	
);

create table Passageiros_Voos(
	fk_numeroVoo INT NOT NULL,
    fk_cpf VARCHAR(14) NOT NULL,
	assento INT,
    numeroReserva INT NOT NULL,
    PRIMARY KEY (fk_numeroVoo, fk_cpf),
    FOREIGN KEY (fk_cpf) REFERENCES Passageiros (cpf),
    FOREIGN KEY (fk_numeroVoo) REFERENCES Voos (numeroVoo)
);