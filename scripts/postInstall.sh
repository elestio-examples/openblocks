#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready

echo "Waiting for software to be ready ..."
sleep 120s;

# target=$(docker-compose port openblocks 3000)

curl http://${target}/api/auth/form/login \
  -H 'authority: openblocks-u353.vm.elestio.app' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7,he;q=0.6' \
  -H 'content-type: application/json' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36' \
  --data-raw '{"register":true,"loginId":"'${ADMIN_EMAIL}'","password":"'${ADMIN_PASSWORD}'","source":"EMAIL","authId":"EMAIL"}' \
  --compressed