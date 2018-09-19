
#### api_mobile

# export SECRET_KEY='%s$lddL35j9~~uDN@n8ub1#mJHTBb7hlat#ooz?TvcjA5{mn35$d2GJFN2~MT#99'
# export ERLANG_COOKIE='mioPh52jUyGxrUPIhfvaMrTP5oM3qIGx'
# export PORT=4000
# export DEBUG_INFO_ENABLED=true
#  export REDIS_URI='redis://seLjCUSJ72naqfwYQvBg1jbORvjtsRKVnAY6RrAUEmA=@kimcore.redis.cache.windows.net:6379/1'

# export RABBITMQ_URI="amqp://kimlic:v2re3X7tMP@51.140.244.242:5672?heartbeat=30"
# export AMAZON_SES_REGION_ENDPOINT=eu-west-1
# export AMAZON_SES_ACCESS_KEY=AKIAJXIR6LE2FNZFBTFA
# export AMAZON_SES_SECRET_KEY=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
# export EMAIL_CREATE_PROFILE_FROM_EMAIL=verification@kimlic.com
# export EMAIL_CREATE_PROFILE_FROM_NAME=Kimlic
# export EMAIL_CREATE_PROFILE_SUBJECT="Kimlic - User email verification"
# export VERIFICATION_EMAIL_TTL=86400
# export VERIFICATION_PHONE_TTL=3600
# export SYNC_VERIFICATIONS="email,phone,documents.id_card,documents.passport,documents.driver_license,documents.residence_permit_card"
# export PIGEON_APNS_CERT=/home/ops/ios-certs/ios-prod/cert.pem
# export PIGEON_APNS_CERT_UNENCRYPTED=/home/ops/ios-certs/ios-prod/key_unencrypted.pem
# export PIGEON_FCM_KEY=AAAAvbQPkNc:APA91bFh0gtzNbOEue789EMFX_kYsaE1UVvDa7V7GXKdxTBDptyxfXREnPtIuaaatb15xXQlvwaw08Kl0aeCGQ8j5i6kXpbLtdgdSoz1ck8_FFL0Zz5NeRXz0OyCxXnn-_i8xPfsD5oB2EhxOTasiQfUzhVsFRs68w
# export TWILIO_ACCOUNT_SID=AC07bf3306b3acf8fe318a5f60ec24466f
# export TWILIO_AUTH_TOKEN=a4cb70766ad8b8bfbe47fe4f6bce0f22
# export RATE_LIMIT_CREATE_PHONE_VERIFICATION_ATTEMPTS=5
# export RATE_LIMIT_CREATE_PHONE_VERIFICATION_TIMEOUT=86400

#+
export QUORUM_URI="http://40.87.94.79:22000"

# export QUORUM_GAS=0x1e8480
# export QUORUM_ALLOWED_RPC_METHODS='web3_clientVersion,eth_call,eth_sendTransaction,eth_sendRawTransaction,eth_getTransactionCount,eth_getTransactionReceipt,personal_newAccount,personal_unlockAccount'

#+
export KIMLIC_AP_ADDRESS='0x1adfcf314697db1f0561676cabd3a0517a63e954'
#+
export KIMLIC_AP_PASSWORD=''
#+
export VERIFF_AP_ADDRESS="0x4aabc1c45ff64c562209d2207617f632184649a1"
#+
export VERIFF_AP_PASSWORD=""
#+
export PROFILE_SYNC_USER_ADDRESS='0x8ac47c376b2b0033ec8b085f50e1b124d1ac25c0'
#+
export PROFILE_SYNC_USER_PASSWORD='69a36acb-aa1d-4897-8f71-57f452bfeae2'
# +
export CONTEXT_STORAGE_ADDRESS='0x1c5c5721000e2d5910ed4cbb17646bfa3b0c278c'

#+
export RABBIT_URI="amqp://kimlic:v2re3X7tMP@168.62.189.14:5672?heartbeat=30" 
export DB_USER='kimlic@stage-postgresql-ap'
export DB_PASSWORD='LU6dME4NzQ'
export DB_NAME='ap_server'
export DB_HOST='stage-postgresql-ap.postgres.database.azure.com'
export DB_PORT=5432
export DB_POOL=10
export PUSH_URL="http://23.96.41.254:4000"

export REDIS_HOST="stage-kimlic.redis.cache.windows.net" 
export REDIS_PASSWORD="NxCFs4gNxvbga51ySs0gQokCBTve1JBXmMoJtIj4Dxo="

# export MESSENGER_MESSAGE_FROM=Kimlic
# export VERIFF_AP_ADDRESS='0x4661b5f26c820abe5eeab1e84871d7807bc9b081'
# export VERIFF_AP_PASSWORD='d0897b36-c547-459c-8955-b31c05f5954dp@ssw0rd'
# export PROFILE_SYNC_USER_ADDRESS='0x4c915a505a1da625d06b0a556acd70e51cf2f198'
# export PROFILE_SYNC_USER_PASSWORD="468e405b-d8b1-4506-98f5-cb5e49514f11"

#   621  git clone https://github.com/Kimlic/kimlic-elixir.git
#   622  cd kimlic-elixir/
#   623  ls
#   624  git branche
#   625  git branch
#   626  git checkout -b master
#   627  git branch
#   628  git fetch
#   629  history
#   630  MIX_ENV=prod mix do deps.get, deps.compile --force
#  