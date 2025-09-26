select emp.nm_empregado, emp.data_admissao
from empregados as emp
inner join departamentos as dep on dep.id_departamento = emp.cod_departamento
left outer join lateral(
	select memp.id_empregado, memp.cod_departamento
	from empregados as memp
	where memp.nm_empregado ilike 'Marcelo%'
) as Marcelo on true
where emp.cod_departamento = Marcelo.cod_departamento and emp.id_empregado <> Marcelo.id_empregado
order by emp.nm_empregado