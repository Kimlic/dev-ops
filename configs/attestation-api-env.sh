
##Attestation API:
export PUSH_URL='51.141.126.10:4000/api/push'
export VERIFFME_API_URL='https://api.veriff.me/v1'
export VERIFFME_AUTH_CLIENT='35313dad-da0c-4d15-b63e-e8ce2136a729'
export VERIFFME_API_SECRET='ca9955ad-38e4-4fea-838c-d1aeb4e4149c'
export PORT=4001
export HOST=localhost
export SECRET_KEY='%s$lddL35j9~~uDN@n8ub1#mJHTBb7hlat#ooz?TvcjA5{mn35$d2GJFN2~MT#99'
export DB_USER='kimlic@kimcore-attestation'
export DB_PASSWORD='LU6dME4NzQ'
export DB_NAME='ap_server'
export DB_HOST='kimcore-attestation.postgres.database.azure.com'
export DB_PORT=5432
export DB_POOL_SIZE=10

###Quorum:
export RABBITMQ_URI='"amqp://kimlic:v2re3X7tMP@51.140.206.183:5672?heartbeat=30"'
export QUORUM_URI="http://51.140.217.174:22000"
export CONTEXT_STORAGE_ADDRESS='0xe0b3f42538f96127480d0199da0ea38e0070a2b2'
export KIMLIC_AP_ADDRESS='0x1d0360031ea2753dd7516edd56e6a4e554b6028b'
export KIMLIC_AP_PASSWORD='3e051250-5193-49e3-8f33-0e1d1ce0eef2p@ssw0rd'
export VERIFF_AP_ADDRESS=0xc9245623235eb82a5b0b7775b46b62e53ee5203c
export PROFILE_SYNC_USER_ADDRESS='0xa11256a5d4e9a46e0dc4f9b2043b213874abf477'
export PROFILE_SYNC_USER_PASSWORD='6550cb65-fc55-48fb-b307-29a0efbf81b7'
export QUORUM_GAS=0x1e8480
export QUORUM_ALLOWED_RPC_METHODS='web3_clientVersion,eth_call,eth_sendTransaction,eth_sendRawTransaction,eth_getTransactionCount,eth_getTransactionReceipt,personal_newAccount,personal_unlockAccount'
export REDIS_HOST="kimcore.redis.cache.windows.net" 
export REDIS_PORT="6379"
export REDIS_PASSWORD="seLjCUSJ72naqfwYQvBg1jbORvjtsRKVnAY6RrAUEmA="

# export REDIS_URI='redis://seLjCUSJ72naqfwYQvBg1jbORvjtsRKVnAY6RrAUEmA=@kimcore.redis.cache.windows.net:6379/1'

#   621  git clone https://github.com/Kimlic/kimlic-elixir.git
#   622  cd kimlic-elixir/
#   623  ls
#   625  git branch
#   626  git checkout -b master
#   627  git branch
#   628  git fetch
#   630  MIX_ENV=prod mix do deps.get, deps.compile --force
#   631  ho