select emp.id_empregado, emp.nm_empregado
from empregados as emp
inner join departamentos as dep on dep.id_departamento = emp.cod_departamento
cross join lateral(
	select inemp.cod_departamento
	from empregados as inemp
	where inemp.nm_empregado like 'T%'
) as depT
where depT.cod_departamento = emp.cod_departamento
