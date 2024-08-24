#!/bin/bash

### Payment Processing

docker run -v /Users/claudioed/development/github/paymentic/schemas/apache-pinot/payment-processing:/config \
  --network compose_paymentic \
  apachepinot/pinot:1.1.0 \
  AddTable -tableConfigFile /config/tables/checkout_payments.json -schemaFile /config/schemas/checkout_payments.json \
  -controllerHost pinot-controller \
  -exec

docker run -v /Users/claudioed/development/github/paymentic/schemas/apache-pinot/payment-processing:/config \
  --network compose_paymentic \
  apachepinot/pinot:1.1.0 \
  AddTable -tableConfigFile /config/tables/transaction_approved.json -schemaFile /config/schemas/transaction_approved.json \
  -controllerHost pinot-controller \
  -exec

docker run -v /Users/claudioed/development/github/paymentic/schemas/apache-pinot/payment-processing:/config \
  --network compose_paymentic \
  apachepinot/pinot:1.1.0 \
  AddTable -tableConfigFile /config/tables/transaction_declined.json -schemaFile /config/schemas/transaction_declined.json \
  -controllerHost pinot-controller \
  -exec

### Merchant Account

docker run -v /Users/claudioed/development/github/paymentic/schemas/apache-pinot/merchant-account-management:/config \
  --network compose_paymentic \
  apachepinot/pinot:1.1.0 \
  AddTable -tableConfigFile /config/tables/transaction_registered.json -schemaFile /config/schemas/transaction_registered.json \
  -controllerHost pinot-controller \
  -exec

### Fraud detection

docker run -v /Users/claudioed/development/github/paymentic/schemas/apache-pinot/fraud-detection:/config \
  --network compose_paymentic \
  apachepinot/pinot:1.1.0 \
  AddTable -tableConfigFile /config/tables/transaction_scorecard.json -schemaFile /config/schemas/transaction_scorecard.json \
  -controllerHost pinot-controller \
  -exec

docker run -v /Users/claudioed/development/github/paymentic/schemas/apache-pinot/fraud-detection:/config \
  --network compose_paymentic \
  apachepinot/pinot:1.1.0 \
  AddTable -tableConfigFile /config/tables/risk_decision_rejected.json -schemaFile /config/schemas/risk_decision_rejected.json \
  -controllerHost pinot-controller \
  -exec

docker run -v /Users/claudioed/development/github/paymentic/schemas/apache-pinot/fraud-detection:/config \
  --network compose_paymentic \
  apachepinot/pinot:1.1.0 \
  AddTable -tableConfigFile /config/tables/risk_decision_approved.json -schemaFile /config/schemas/risk_decision_approved.json \
  -controllerHost pinot-controller \
  -exec

