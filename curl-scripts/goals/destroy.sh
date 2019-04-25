curl "http://localhost:4741/goals/${ID}" \
--include \
--request DELETE \
--header 'Content-Type: application/json' \
--header "Authorization: Token token=${TOKEN}" \
