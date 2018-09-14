
#### api_mobile

export SECRET_KEY='%s$lddL35j9~~uDN@n8ub1#mJHTBb7hlat#ooz?TvcjA5{mn35$d2GJFN2~MT#99'
export ERLANG_COOKIE='mioPh52jUyGxrUPIhfvaMrTP5oM3qIGx'
export PORT=4000
export DEBUG_INFO_ENABLED=true
# export REDIS_URI='redis://seLjCUSJ72naqfwYQvBg1jbORvjtsRKVnAY6RrAUEmA=@kimcore.redis.cache.windows.net:6379/1'
export REDIS_HOST="kimcore.redis.cache.windows.net" 
export REDIS_PORT="6379"
export REDIS_PASSWORD="seLjCUSJ72naqfwYQvBg1jbORvjtsRKVnAY6RrAUEmA="
export RABBITMQ_URI="amqp://kimlic:v2re3X7tMP@51.140.244.242:5672?heartbeat=30"
export AMAZON_SES_REGION_ENDPOINT=eu-west-1
export AMAZON_SES_ACCESS_KEY=AKIAJXIR6LE2FNZFBTFA
export AMAZON_SES_SECRET_KEY=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
export EMAIL_CREATE_PROFILE_FROM_EMAIL=verification@kimlic.com
export EMAIL_CREATE_PROFILE_FROM_NAME=Kimlic
export EMAIL_CREATE_PROFILE_SUBJECT="Kimlic - User email verification"
export VERIFICATION_EMAIL_TTL=86400
export VERIFICATION_PHONE_TTL=3600
export SYNC_VERIFICATIONS="email,phone,documents.id_card,documents.passport,documents.driver_license,documents.residence_permit_card"
export PIGEON_APNS_CERT=/home/ops/ios-certs/ios-prod/cert.pem
export PIGEON_APNS_CERT_UNENCRYPTED=/home/ops/ios-certs/ios-prod/key_unencrypted.pem
export PIGEON_FCM_KEY=AAAAvbQPkNc:APA91bFh0gtzNbOEue789EMFX_kYsaE1UVvDa7V7GXKdxTBDptyxfXREnPtIuaaatb15xXQlvwaw08Kl0aeCGQ8j5i6kXpbLtdgdSoz1ck8_FFL0Zz5NeRXz0OyCxXnn-_i8xPfsD5oB2EhxOTasiQfUzhVsFRs68w
export TWILIO_ACCOUNT_SID=AC07bf3306b3acf8fe318a5f60ec24466f
export TWILIO_AUTH_TOKEN=a4cb70766ad8b8bfbe47fe4f6bce0f22
export RATE_LIMIT_CREATE_PHONE_VERIFICATION_ATTEMPTS=5
export RATE_LIMIT_CREATE_PHONE_VERIFICATION_TIMEOUT=86400
export QUORUM_URI="http://51.141.115.175:22000"
export QUORUM_GAS=0x1e8480
export QUORUM_ALLOWED_RPC_METHODS='web3_clientVersion,eth_call,eth_sendTransaction,eth_sendRawTransaction,eth_getTransactionCount,eth_getTransactionReceipt,personal_newAccount,personal_unlockAccount'
export KIMLIC_AP_ADDRESS='0x1d0360031ea2753dd7516edd56e6a4e554b6028b'
export KIMLIC_AP_PASSWORD='3e051250-5193-49e3-8f33-0e1d1ce0eef2p@ssw0rd'
export VERIFF_AP_ADDRESS=0xc9245623235eb82a5b0b7775b46b62e53ee5203c
export PROFILE_SYNC_USER_ADDRESS='0xa11256a5d4e9a46e0dc4f9b2043b213874abf477'
export PROFILE_SYNC_USER_PASSWORD='6550cb65-fc55-48fb-b307-29a0efbf81b7'
export CONTEXT_STORAGE_ADDRESS='0xe0b3f42538f96127480d0199da0ea38e0070a2b2'
export MESSENGER_MESSAGE_FROM=Kimlic
export VERIFF_AP_ADDRESS='0x4661b5f26c820abe5eeab1e84871d7807bc9b081'
export VERIFF_AP_PASSWORD='d0897b36-c547-459c-8955-b31c05f5954dp@ssw0rd'
export PROFILE_SYNC_USER_ADDRESS='0x4c915a505a1da625d06b0a556acd70e51cf2f198'
export PROFILE_SYNC_USER_PASSWORD="468e405b-d8b1-4506-98f5-cb5e49514f11"

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
#   631  MIX_ENV=prod mix release --verbose --name=mobile_api