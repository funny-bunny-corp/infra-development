#!/bin/bash

docker run -v /Users/claudioed/development/github/paymentic/schemas/apache-pinot/payment-processing:/config \
  --network compose_paymentic \
  apachepinot/pinot:1.1.0 \
  AddTable -tableConfigFile /config/tables/checkout_payments.json -schemaFile /config/schemas/checkout_payments_schema.json \
  -controllerHost pinot-controller \
  -exec
