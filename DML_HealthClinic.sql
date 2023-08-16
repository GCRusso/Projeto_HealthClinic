-- DML (Data Manipulation Language)
USE HealthClinic_Gabriel;

--Inserindo dados na tabela TipoDeUsuario
INSERT INTO TipoDeUsuario(TituloTipoUsuario)
VALUES
('Administrador'), ('Medico'), ('Paciente');

SELECT * FROM TipoDeUsuario;

--Inserindo dados na tabela Usuario
INSERT INTO Usuario(IdTipoDeUsuario,Email,Senha)
VALUES
(1,'gabriel@gmail.com','1562'),
(2,'pedro@gmail.com','1562'),
(2,'allan@gmail.com','1562'),
(3,'andre@gmail.com','1562'),
(3,'rubens@gmail.com','1562'),
(2,'carlos@gmail.com','1562'),
(3,'diego@gmail.com','1562');

SELECT * FROM Usuario

--Inserindo dados na tabela Clinica
INSERT INTO Clinica(NomeFantasia,Endereco,RazaoSocial,HorarioAbertura,HorarioFechamento,CNPJ)
VALUES('HealthClinic','Av. Araucaria 1520, Pq. Oratorio Santo Andre, SP','Clinica de saúde Dr.Rofstar','07:00','18:00','15647896523145')

SELECT * FROM Clinica;

--Inserindo dados na tabela Especialidade
INSERT INTO Especialidade(NomeEspecialidade)
VALUES ('Ortopedista'),('Cardiologista'),('Vascular');

SELECT * FROM Especialidade;

--Inserindo dados na tabela Medico
INSERT INTO Medico(IdEspecialidade,IdClinica,IdUsuario,CRM,NomeMedico)
VALUES 
(1,1,2,'85697894','pedro'),
(2,1,3,'52645369','allan'),
(3,1,6,'14598752','carlos');

SELECT * FROM Medico;

--Inserindo dados na tabela Usuario
INSERT INTO Paciente(IdUsuario,DataNascimento,Sexo,CPF,NomePaciente)
VALUES 
('4','16/05/2000','Masculino','26547895123','Andre'),
('5','16/05/2000','Masculino','15623478941','Rubens'),
('7','16/05/2000','Masculino','26547894230','Diego');

SELECT * FROM Paciente;

--Inserindo dados na tabela Consulta
INSERT INTO Consulta(IdMedico,IdPaciente,DataConsulta,HorarioConsulta,LocalConsulta)
VALUES
(1,1,'02/09/2023','07:50','Av. Araucaria 1520, Pq. Oratorio Santo Andre, SP'),
(2,2,'10/09/2023','07:50','Av. Araucaria 1520, Pq. Oratorio Santo Andre, SP'),
