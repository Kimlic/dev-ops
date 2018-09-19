export RELAYING_QUORUM_ADDRESS='0xaea9433841ec55397f9890a3b412ed74ecf8e7b3'
export ATTESTATION_ENDPOINT='http://40.87.64.171:4001/api'
export DB_USERNAME='kimlic@stage-postgres-pr2'
export DB_PASSWORD='LU6dME4NzQ'
export DB_HOSTNAME='stage-postgres-pr2.postgres.database.azure.com'
export DB_POOL=10
export AZURE_CONTAINER=rp-blob
export AZURE_CDN_URL='https://stagerp2blob.blob.core.windows.net'
export AZURE_ACCOUNT=stagerp2blob
export AZURE_KEY="vVxIFU45rfYw3Z5uGP0IxLaEHgENxG0JurOZYrEprDH9T4SC2atbGZfrc11CM9LIh0dSRYHOpb1wF+ZmaWrCiQ=="
export KIM_CORE_ENDPOINT='http://23.96.41.254:4000/api'
export QUORUM_URL= "http://23.96.100.231:22000"
export RELAYING_CALLBACK_URL='http://168.62.55.56:4002/api/qr_callback'
export FIDO_ENDPOINT='http://23.96.96.65:8080/fidouaf/v1/public'


# - name: compile project
#   shell: cd /home/ops/rp_server/ && MIX_ENV=prod mix do deps.get, deps.compile --force

# - name: mix release
#   shell: cd /home/ops/rp_server/ &&  MIX_ENV=prod mix release --verbose --env=prod

# - name: db migration 
# MIX_ENV=prod mix ecto.migrate

# - name: seeds
#   shell: sh /home/ops/rp_server/_build/prod/rel/rp_server/bin/rp_server seeds

# - name: start rp_server daemon
#   shell: sh /home/ops/rp_server/_build/prod/rel/rp_server/bin/rp_server start