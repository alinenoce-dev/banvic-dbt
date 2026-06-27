with 
    dim_colaborabores as (
        select * 
        from {{ ref('int_dimensao_colaboradores') }}
    )

select *
from dim_colaborabores