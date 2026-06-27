with 
    contas as (
        select *
        from {{ ref('stg_erp__contas') }}
    )

    , selecionar_colunas as (
        select
            pk_conta
            , fk_cliente
            , fk_agencia
            , fk_localidade
            , salto_total_conta
            , saldo_disponivel_conta
            , ts_ultimo_lancamento
        from contas
    )
    
select *
from contas