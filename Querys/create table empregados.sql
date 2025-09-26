create table EMPREGADOS(
id_empregado int generated always as identity not null primary key,
cod_departamento integer not null,
cod_emp_funcao integer not null,
nm_empregado varchar(100),
data_admissao date,
salario numeric(92,5),
comissao numeric(92,5),
foreign key(cod_departamento) references DEPARTAMENTOS(id_departamento),
foreign key(cod_emp_funcao) references FUNCAO(id_funcao)

)