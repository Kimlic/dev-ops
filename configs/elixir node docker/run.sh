str=`date -Ins | md5sum`
name=${str:0:10}

elixir --name $name@$127.0.0.1 --cookie cookie -S mix