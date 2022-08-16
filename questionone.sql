-- Question One -- 

SELECT * FROM api_shipment
INNER JOIN api_transaction
ON api_shipment.order_id = api_transaction.order_id
WHERE api_transaction.object_id = '618c313ed743ba2c7cdc3636'


-- Question Two --
SELECT amount
FROM api_rate
INNER JOIN api_shipment 
ON api_rate.shipment_id = api_shipment.id
WHERE api_shipment.order_id = '618b1586fbabb3e56406d8d1'

-- Question Three -- 

SELECT SUM(amount)
FROM api_rate
INNER JOIN api_transaction
ON api_rate.id = api_transaction.api_rate_id
WHERE    api_transaction.object_created 
  BETWEEN '2021-01-01' AND CURRENT_DATE 


-- Question Four --

SELECT * FROM api_transaction
INNER JOIN api_shipment
ON api_shipment.order_id = api_transaction.order_id
WHERE api_shipment.extra LIKE '%"signature_confirmation": "ADULT"%'
AND api_transaction.object_owner_id = 123
