SELECT * FROM api_shipment
INNER JOIN api_transaction
ON api_shipment.order_id = api_transaction.order_id
AND api_transaction.object_id = '618c313ed743ba2c7cdc3636'


SELECT amount
FROM api_rate
INNER JOIN api_shipment 
ON api_rate.shipment_id = api_shipment.id
WHERE api_shipment.order_id = '618b1586fbabb3e56406d8d1'

SELECT SUM(amount)
FROM api_rate
INNER JOIN (
  SELECT api_rate_id
  FROM api_transaction
  WHERE object_created
  BETWEEN '2021-01-01 00:00:00'
  AND '2022-08-15 00:00:00'
) ON api_rate.id = api_transaction.api_rate_id

SELECT * FROM api_transaction
INNER JOIN (
  SELECT order_id
  FROM api_shipment
  WHERE extra LIKE '%"signature_confirmation": "ADULT"%'
)
ON api_shipment.order_id = api_transaction.order_id
AND api_transaction.object_owner_id = 123