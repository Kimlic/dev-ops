
#### ap_api


#+
export QUORUM_URI="http://40.87.5.227:22000"

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

export PUSH_URL="http://23.96.41.254:4000"
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
#   631  MIX_ENV=prod mix release --verbose --name=attestation_api
# MIX_ENV=prod mix ecto.migrate