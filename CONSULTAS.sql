select socios.nombre, socios.salarioMensual
from socios
inner join empresa on (empresa.id = socios.empresa_id)
where empresa.num_empleados_totales >7

select socios.nombre, prestamo.valor_prestamo
from socios
inner join prestamo on (socios.id = prestamo.socios_id)
group by socios.id
order by prestamo.valor_prestamo desc limit 1

select codeudor.ciudad, count(codeudor.id)
from codeudor
where codeudor.posible_cliente = 1
group by codeudor.ciudad
order by count(codeudor.id) desc limit 1


select count(prestamo.id) as cantidad_prestamos
from prestamo
inner join modalidad on (prestamo.modalidad_id = modalidad.id)
where modalidad.tasa_interes > 2