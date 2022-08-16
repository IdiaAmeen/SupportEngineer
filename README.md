# SupportEngineer

## General:
This is a tool to automate shipping related tasks. This includes 
1. Create a shipment
2. Retrieve a shipment
3. Retrieve rates for a shipment
4. Retrieve either the sender or recipient address by specifying their object ids or retrieve
both simultaneously by passing a shipment’s object id
5. Retrieve a parcel by specifying its object id or by passing a shipment’s object id

## Installation:
You can install this package by running the following command:
```shell
  npm install shippo
```


### Requirements:
The shippo Node.js has no additional dependencies.

## Usage:

Initialize your `shippo` instance using your `Private Auth Token` provided to you on the `API` page in the Shippo Dashboard.

```js
    var shippo = require('shippo')('<YOUR_PRIVATE_KEY>');
