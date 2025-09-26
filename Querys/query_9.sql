select emp.nm_empregado, func.nm_funcao,
emp.data_admissao
from empregados as emp
inner join departamentos as dep on dep.id_departamento = emp.cod_departamento
inner join funcao as func on func.id_funcao = emp.cod_emp_funcao
order by emp.salario desc