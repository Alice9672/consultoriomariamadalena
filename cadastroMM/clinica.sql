/* Clinica_logico: */

create database clinica;
use clinica;
CREATE TABLE Administrador (
    cod_adm INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    login_adm VARCHAR(11) NOT NULL,
    nome_adm VARCHAR(100) NOT NULL,
    senha_adm VARCHAR(11) NOT NULL,
    telefone_adm VARCHAR(10) NOT NULL
);

CREATE TABLE Clinica (
    cod_clinica INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nm_clinica VARCHAR(20) NOT NULL,
    CNPJ VARCHAR(11) NOT NULL,
    endereco_clinica VARCHAR(50) NOT NULL,
    telefone_clinica VARCHAR(11) NOT NULL,
    fk_Administrador_cod_adm INT(11) NOT NULL
);

CREATE TABLE Secretaria (
    cod_sec INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nm_sec VARCHAR(50) NOT NULL,
    cpf_sec VARCHAR(11) NOT NULL,
    telefone_sec VARCHAR(11) NOT NULL,
    sexo_sec CHAR(10 ) NOT NULL,
    endereco_sec VARCHAR(50) NOT NULL,
    fk_Administrador_cod_adm INT(11) NOT NULL
);

CREATE TABLE Paciente (
    cod_paciente INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_paciente VARCHAR(100) NOT NULL,
    cpf_paciente INT(11) NOT NULL,
    sexo_paciente CHAR (10 ) NOT NULL,
    telefone_paciente VARCHAR(11) NOT NULL,
    endereco_paciente VARCHAR(50) NOT NULL
    
);

CREATE TABLE Medico (
    cod_medico INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nm_medico VARCHAR(100) NOT NULL,
    cpf_medico VARCHAR(11) NOT NULL,
    crm_medico VARCHAR(10) NOT NULL,
    telefone_medico VARCHAR(11) NOT NULL,
    endereco_medico VARCHAR(50) NOT NULL,
    sexo_medico CHAR (10 ) NOT NULL,
    fk_Secretaria_cod_sec INT(11) NOT NULL
);

CREATE TABLE Convenio_ (
    cod_convenio INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nm_convenio VARCHAR(15) NOT NULL,
    dt_inicio DATE  NOT NULL
);
 
ALTER TABLE Clinica ADD CONSTRAINT FK_Clinica_2
    FOREIGN KEY (fk_Administrador_cod_adm)
    REFERENCES Administrador (cod_adm);
 
ALTER TABLE Secretaria ADD CONSTRAINT FK_Secretaria_2
    FOREIGN KEY (fk_Administrador_cod_adm)
    REFERENCES Administrador (cod_adm);
 
ALTER TABLE Medico ADD CONSTRAINT FK_Medico_2
    FOREIGN KEY (fk_Secretaria_cod_sec)
    REFERENCES Secretaria (cod_sec);