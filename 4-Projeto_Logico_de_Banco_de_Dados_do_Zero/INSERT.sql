INSERT INTO Cliente (Nome, Telefone, Email) VALUES ('Jos� da Silva', '(11)99999.9999', 'jose@gmail.com');
INSERT INTO Cliente (Nome, Telefone, Email) VALUES ('Jeremias Santos', '(11)98888.8888', 'jeremias@gamil.com');
INSERT INTO Cliente (Nome, Telefone, Email) VALUES ('Marcia Silva', '(11)97777.7777', 'marcia@gmail.com');
INSERT INTO Cliente (Nome, Telefone, Email) VALUES ('Carla de Abreu', '(11)96666-6666', 'carla@gmail.com');
INSERT INTO Cliente (Nome, Telefone, Email) VALUES ('Pedro Oliveira Mota LTDA.', '(11)95555-5555', 'pedro@gmail.com');

INSERT INTO StatusOrdemServico (Identificacao) VALUES ('ABERTO');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('EM ANDAMENTO');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('EM PAUSA');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('CANCELADO');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('CONCLU�DO');

INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, DataAutorizacao, Obs) VALUES (1, 1, '0000000001', '2022-09-09', null, 250, '2022-09-08', null);
INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, DataAutorizacao, Obs) VALUES (2, 1, '0000000002', '2022-09-10', null, 123, '2022-09-08', null);

INSERT INTO Marca (Identificacao) VALUES ('Ford');
INSERT INTO Marca (Identificacao) VALUES ('Chevrolet');
INSERT INTO Marca (Identificacao) VALUES ('Volkswagen');
INSERT INTO Marca (Identificacao) VALUES ('Fiat');

INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (1, 'KA', 2015);
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (1, 'Onix', 2013);
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (2, 'Gol', 2015);
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (3, 'Fiat', 2010);

INSERT INTO Equipe (Identificacao) VALUES ('Borracharia');
INSERT INTO Equipe (Identificacao) VALUES ('Pintura');
INSERT INTO Equipe (Identificacao) VALUES ('Funilaria');
INSERT INTO Equipe (Identificacao) VALUES ('Mecanica');
INSERT INTO Equipe (Identificacao) VALUES ('El�trica');

INSERT INTO StatusServico (Identificacao) VALUES ('A FAZER');
INSERT INTO StatusServico (Identificacao) VALUES ('FAZENDO');
INSERT INTO StatusServico (Identificacao) VALUES ('AGUARANDO PE�A');
INSERT INTO StatusServico (Identificacao) VALUES ('CANCELADO');
INSERT INTO StatusServico (Identificacao) VALUES ('CONCLU�DO');

INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Pintura geral', 2000);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Troca do motor', 1500);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Troca de lampada do farol', 30);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Troca de pneu', 50);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Alinhamento', 50);

INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (1, 1, 250025, 2015);
INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (1, 2, 250025, 2013);
INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (3, 3, 250025, 2015);
INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (3, 4, 250025, 2010);

INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (1, 1, 1, 1, 'Trocar Pneu', 0, 50, '2022-09-10', '2022-09-10');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (2, 2, 2, 2, 'Instalar som', 1500, 250, '2022-09-10', '2022-09-10');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (3, 3, 3, 3, 'Trocar palamala', 1000, 300, '2022-09-10', '2022-09-10');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (4, 4, 4, 4, 'Consertar motor', 100, 1000, '2022-09-10', '2022-09-10');

INSERT INTO Especialidade (Identificacao) VALUES ('Trocar Pneu');
INSERT INTO Especialidade (Identificacao) VALUES ('Pintar');
INSERT INTO Especialidade (Identificacao) VALUES ('Lixar');
INSERT INTO Especialidade (Identificacao) VALUES ('Mecanica Hidr�ulico');
INSERT INTO Especialidade (Identificacao) VALUES ('Instalar som');

INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, CEP, Logradouro, Numero,	Complemento) VALUES (1, 1, 'J�O', 'Jos� da Silva', '00000-000', 'Rua..', 'S/N', null);
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, CEP, Logradouro, Numero,	Complemento) VALUES (2, 2, 'ZeH', 'Jos� da Silva', '00000-000', 'Rua..', 'S/N', null);
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, CEP, Logradouro, Numero,	Complemento) VALUES (3, 3, 'Bora Bill!', 'Bora Bill!', '00000-000', 'Rua..', 'S/N', null);
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, CEP, Logradouro, Numero,	Complemento) VALUES (4, 4, 'Fil do Bill', 'Fil do Bill', '00000-000', 'Rua..', 'S/N', null);

INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Tinta Gal�o', 150);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('�loe 1lt', 40);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('L�mpada do farol', 30);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Pneu', 450);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Filtro de �leo', 50);

INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (1, 1, 50);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (2, 2, 50);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (3, 3, 50);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (4, 4, 50);