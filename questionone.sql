SELECT api_shipment.* , api_transaction.object_id
FROM api_shipment 
INNER JOIN api_transaction
WHERE api_shipment.order_id = api_transaction.order_id


