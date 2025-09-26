select sum(emp.salario) as TotalSalarios, dep.nm_departamento, func.nm_funcao
from empregados as emp
inner join departamentos as dep on dep.id_departamento = emp.cod_departamento
inner join funcao as func on func.id_funcao = emp.cod_emp_funcao
left outer join lateral(
	select min(inemp.salario) as salario
	from empregados as inemp
	inner join funcao as infunc on infunc.id_funcao = inemp.cod_emp_funcao
	where infunc.nm_funcao = 'Gerente'
) as menorsal on true
where emp.data_admissao < (CURRENT_DATE-INTERVAL '1 YEARS') and 
		dep.local = 'Porto Alegre'
group by dep.nm_departamento, func.nm_funcao		