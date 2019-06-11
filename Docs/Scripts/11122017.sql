/******************************************************************************/
/***               Generated by IBExpert 08/12/2017 21:29:07                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/


/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE OCORRENCIA (
    CODIGOOCORRENCIA  CHAR(2) NOT NULL,
    DESCRICAO         VARCHAR(100)
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE OCORRENCIA ADD PRIMARY KEY (CODIGOOCORRENCIA);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/



INSERT INTO OCORRENCIA VALUES ('02','Entrada confirmada');
INSERT INTO OCORRENCIA VALUES ('03','Entrada rejeitada');
INSERT INTO OCORRENCIA VALUES ('06','Liquida��o normal');
INSERT INTO OCORRENCIA VALUES ('09','Baixado automaticamente via arquivo');
INSERT INTO OCORRENCIA VALUES ('10','Baixado conforme instru��es da cooperativa de cr�dito');
INSERT INTO OCORRENCIA VALUES ('12','Abatimento concedido');
INSERT INTO OCORRENCIA VALUES ('13','Abatimento cancelado');
INSERT INTO OCORRENCIA VALUES ('14','Vencimento alterado');
INSERT INTO OCORRENCIA VALUES ('15','Liquida��o em cart�rio');
INSERT INTO OCORRENCIA VALUES ('17','Liquida��o ap�s baixa');
INSERT INTO OCORRENCIA VALUES ('19','Confirma��o de recebimento de instru��o de protesto');
INSERT INTO OCORRENCIA VALUES ('20','Confirma��o de recebimento de instru��o de susta��o de protesto');
INSERT INTO OCORRENCIA VALUES ('23','Entrada de t�tulo em cart�rio');
INSERT INTO OCORRENCIA VALUES ('24','Entrada rejeitada por CEP irregular');
INSERT INTO OCORRENCIA VALUES ('27','Baixa rejeitada');
INSERT INTO OCORRENCIA VALUES ('28','Tarifa');
INSERT INTO OCORRENCIA VALUES ('30','Altera��o rejeitada');
INSERT INTO OCORRENCIA VALUES ('32','Instru��o rejeitada');
INSERT INTO OCORRENCIA VALUES ('33','Confirma��o de pedido de altera��o de outros dados');
INSERT INTO OCORRENCIA VALUES ('34','Retirado de cart�rio e manuten��o em carteira');