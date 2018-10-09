echo "Bind port: $1"
sed -i "s/%PORT%/$1/g"  config
privoxy --no-daemon config
