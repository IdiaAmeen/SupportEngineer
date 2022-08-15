const token = "shippo_test_7e48e6ae10c16539b11e93968e7785115c17c928";
const shippo = require("shippo")(token);

const addressFrom = {
  name: "Shawn Ippotle",
  street1: "215 Clayton St.",
  city: "San Francisco",
  state: "CA",
  zip: "94117",
  country: "US",
};

const addressTo = {
  name: "Mr Hippo",
  street1: "Broadway 1",
  city: "New York",
  state: "NY",
  zip: "10007",
  country: "US",
};

const parcel = {
  length: "5",
  width: "5",
  height: "5",
  distance_unit: "in",
  weight: "2",
  mass_unit: "lb",
};

let objectId = "2b7d72b80ee74e49859bfba8766b1363";

// Create Shipment //
shippo.shipment
  .create({
    address_from: addressFrom,
    address_to: addressTo,
    parcels: [parcel],
    async: true,
  })
  .then(function (address) {
    console.log("shipment: %s", JSON.stringify(address));
  });

//Retrieve shipment//
shippo.shipment
  .retrieve(objectId)
  .then((response) => {
    console.log(response);
  })
  .catch((error) => {
    console.log(error);
  });

//Retrieve rates//
shippo.shipment
  .rates(objectId)
  .then((response) => {
    console.log(response);
  })
  .catch((error) => {
    console.log(error);
  });
//Retrieve parcel//
shippo.parcel
  .retrieve(objectId)
  .then((response) => {
    console.log(response);
  })
  .catch((error) => {
    console.log(error);
  });

// Retrieve sender & reciepient address//

shippo.shipment
  .retrieve(objectId)
  .then((response) => {
    console.log("Sender:" + JSON.stringify(response.address_from));
    console.log("Reciepient:" + JSON.stringify(response.address_to));
  })
  .catch((error) => {
    console.log(error);
  });
