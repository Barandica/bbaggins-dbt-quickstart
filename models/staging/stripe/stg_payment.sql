select
    id AS payment_id,
    orderid AS order_id,
    paymentmethod,
    status,
    amount,
    created,
    _batched_at

from {{ source('stripe', 'payment') }}