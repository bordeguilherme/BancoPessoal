--Criação do Banco de Dados
create database Detran_ST;

--Criação da Tabela pessoa
create table pessoa(
	pes_cd_id serial,
	pes_tx_nome varchar(50),
	pes_tx_cpf varchar(14),
	pes_dt_datanasc date,
	pes_tx_cidade varchar(30),
	pes_tx_uf varchar(2),
	pes_tx_pais varchar(30),
	primary key (pes_cd_id)
);

--Criação da Tabela carro
create table carro(
	car_cd_id serial,
	car_tx_modelo varchar(70),
	car_tx_marca varchar(15),
	car_tx_placa varchar(10),
	car_int_ano integer,
	car_tx_cddregistro varchar(30),
	car_tx_ufregistro varchar(2),
	car_tx_paisregistro varchar(30),
	fk_pes_cd_id integer,
	primary key (car_cd_id),
	foreign key (fk_pes_cd_id) references pessoa(pes_cd_id)
);

--Inclusão dos Valores da Tabela pessoa
insert into pessoa (pes_cd_id, pes_tx_nome, pes_tx_cpf, pes_dt_datanasc, pes_tx_cidade, pes_tx_uf, pes_tx_pais)
values ('1', 'Guilherme Borde Almeida', '155.272.358-03', '1999-04-21', 'Petrópolis', 'RJ', 'Brasil');

insert into pessoa (pes_cd_id, pes_tx_nome, pes_tx_cpf, pes_dt_datanasc, pes_tx_cidade, pes_tx_uf, pes_tx_pais)
values ('2', 'Leonardo Martins de Almeida', '749.614.012-73', '1974-04-24', 'Duque de Caxias', 'RJ', 'Brasil');

insert into pessoa (pes_cd_id, pes_tx_nome, pes_tx_cpf, pes_dt_datanasc, pes_tx_cidade, pes_tx_uf, pes_tx_pais)
values ('3', 'Vitória Costa Magalhães Gonçalves', '289.975.518-84', '1999-02-07', 'Petrópolis', 'RJ', 'Brasil');

insert into pessoa (pes_cd_id, pes_tx_nome, pes_tx_cpf, pes_dt_datanasc, pes_tx_cidade, pes_tx_uf, pes_tx_pais)
values ('4', 'Aline Cristina da Silva Borde', '179.344.988-91', '1975-01-15', 'Petrópolis', 'RJ', 'Brasil');

insert into pessoa (pes_cd_id, pes_tx_nome, pes_tx_cpf, pes_dt_datanasc, pes_tx_cidade, pes_tx_uf, pes_tx_pais)
values ('5', 'W. Axl Rose', '468.879.413-96', '1962-02-06', 'Los Angeles', 'CA', 'Estados Unidos da América');

insert into pessoa (pes_cd_id, pes_tx_nome, pes_tx_cpf, pes_dt_datanasc, pes_tx_cidade, pes_tx_uf, pes_tx_pais)
values ('6', 'Damiano David', '285.453.976-36', '1999-01-08', 'Roma', 'RM', 'Itália');

insert into pessoa (pes_cd_id, pes_tx_nome, pes_tx_cpf, pes_dt_datanasc, pes_tx_cidade, pes_tx_uf, pes_tx_pais)
values ('7', 'Arthur Antunes Coimbra', '845.292.867-78', '1953-03-03', 'Rio de Janeiro', 'RJ', 'Brasil');

--Inclusão dos Valores da Tabela carro
insert into carro (car_cd_id, car_tx_modelo, car_tx_marca, car_tx_placa, car_int_ano, car_tx_cddregistro, car_tx_ufregistro,
car_tx_paisregistro, fk_pes_cd_id)
values ('1', '325I Convertible', 'BMW', 'US1985', '1989', 'Los Angeles', 'CA', 'Estados Unidos da America', '5');

insert into carro (car_cd_id, car_tx_modelo, car_tx_marca, car_tx_placa, car_int_ano, car_tx_cddregistro, car_tx_ufregistro,
car_tx_paisregistro, fk_pes_cd_id)
values ('2', 'Classic 1.0 LS', 'Chevrolet', 'LRV-3H16', '2012', 'Petrópolis', 'RJ', 'Brasil', '1');

insert into carro (car_cd_id, car_tx_modelo, car_tx_marca, car_tx_placa, car_int_ano, car_tx_cddregistro, car_tx_ufregistro,
car_tx_paisregistro, fk_pes_cd_id)
values ('3', '550 Maranello', 'Ferrari', 'AS8642', '1999', 'Lafayette', 'IN', 'Estados Unidos da América', '5');

insert into carro (car_cd_id, car_tx_modelo, car_tx_marca, car_tx_placa, car_int_ano, car_tx_cddregistro, car_tx_ufregistro,
car_tx_paisregistro, fk_pes_cd_id)
values ('4', '360 Challenge Stradale', 'Ferrari', 'KS8758', '2004', 'Nova Iorque', 'NY', 'Estados Unidos da América', '5');

insert into carro (car_cd_id, car_tx_modelo, car_tx_marca, car_tx_placa, car_int_ano, car_tx_cddregistro, car_tx_ufregistro,
car_tx_paisregistro, fk_pes_cd_id)
values ('5', 'Murcielago', 'Lamborghini', 'IA7895', '2003', 'Los Angeles', 'CA', 'Estados Unidos da América', '5');

insert into carro (car_cd_id, car_tx_modelo, car_tx_marca, car_tx_placa, car_int_ano, car_tx_cddregistro, car_tx_ufregistro,
car_tx_paisregistro, fk_pes_cd_id)
values ('6', 'Palio 1.0 ELX', 'Fiat', 'HKN-3G74', '2009', 'Petrópolis', 'RJ', 'Brasil', '4');

insert into carro (car_cd_id, car_tx_modelo, car_tx_marca, car_tx_placa, car_int_ano, car_tx_cddregistro, car_tx_ufregistro,
car_tx_paisregistro, fk_pes_cd_id)
values ('7', 'Astra Elegance 2.0 8V', 'Chevrolet', 'LRS-1H50', '2005', 'Petrópolis', 'RJ', 'Brasil', '2');

insert into carro (car_cd_id, car_tx_modelo, car_tx_marca, car_tx_placa, car_int_ano, car_tx_cddregistro, car_tx_ufregistro,
car_tx_paisregistro, fk_pes_cd_id)
values ('8', 'Vectra GLS 2.0', 'Chevrolet', 'LBR-9172', '1997', 'Petrópolis', 'RJ', 'Brasil', '1');

insert into carro (car_cd_id, car_tx_modelo, car_tx_marca, car_tx_placa, car_int_ano, car_tx_cddregistro, car_tx_ufregistro,
car_tx_paisregistro, fk_pes_cd_id)
values ('9', 'Zafira Ellegance 2.0', 'Chevrolet', 'LLQ-7556', '2012', 'Petrópolis', 'RJ', 'Brasil', '3');

insert into carro (car_cd_id, car_tx_modelo, car_tx_marca, car_tx_placa, car_int_ano, car_tx_cddregistro, car_tx_ufregistro,
car_tx_paisregistro, fk_pes_cd_id)
values ('10', '1949', 'Ford', 'US7821', '1950', 'Roma', 'RM', 'Itália', '6');

insert into carro (car_cd_id, car_tx_modelo, car_tx_marca, car_tx_placa, car_int_ano, car_tx_cddregistro, car_tx_ufregistro,
car_tx_paisregistro, fk_pes_cd_id)
values ('11', 'Celica 2.0 GT', 'Toyota', 'LGL-4444', '1982', 'Rio de Janeiro', 'RJ', 'Brasil', '7');

--Consulta para mostrar quantidade de carros por pessoa na ordem decrescente (de quem tem mais para quem tem menos)
select fk_pes_cd_id, count (fk_pes_cd_id) as "qtd_de_carros"
from carro
group by fk_pes_cd_id
order by qtd_de_carros desc;

--Consulta para mostrar quais carros tem a pessoa de código (pes_cod_id) = 5 (no caso, W. Axl Rose)
select *
from carro
where fk_pes_cd_id = 5

--Consulta para mostrar em ordem alfabética o nome da pessoa e do modelo do(s) carro(s) que a pertence
select pes_tx_nome, car_tx_modelo 
from pessoa
inner join carro on pessoa.pes_cd_id = carro.fk_pes_cd_id
order by pes_tx_nome asc;