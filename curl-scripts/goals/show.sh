curl http://localhost:4741/goals/${ID} \
  --request GET \
  --include \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token=${TOKEN}" \
