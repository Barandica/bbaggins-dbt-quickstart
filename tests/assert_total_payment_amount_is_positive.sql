-- Los reembolsos tienen un importe negativo, lo que significa que el valor del importe debe 
-- ser siempre mayor o igual a cero.
-- Therefore return records where this isn't true to make the test fail
-- De esta prueba estamos afirmando que de la tabla payment no hay valores negativos
select
    orderid,
    sum(amount) as total_amount
from {{ ref('stg_payment' )}}
group by 1
having not(total_amount >= 0)