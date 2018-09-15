#!/bin/bash
for i in {0..50}; do (curl -Is https://elixir.aws.pp.ua/api/verifications/digital/submission | head -n1 &) 2>/dev/null; done