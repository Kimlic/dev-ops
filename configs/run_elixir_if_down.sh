#!/bin/bash

elixir=$(ps aux | grep [r]p_server@127.0.0.1 | wc -l)

if  [ $elixir -ge 2 ]
then
	echo "elixir works"
else
	sh /home/ops/rp-server/_build/stage/rel/rp_server/bin/rp_server start
fi