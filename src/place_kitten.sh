#!/bin/bash

api="https://placekitten.com"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_kitten() {
  # 1 - width: (integer): <width - default: 300>
  # 2 - height: (integer): <height - default: 300>
  curl --request GET \
		--url "$api/${1:-300}/${2:-300}" \
		--user-agent "$user_agent" \
		--header "content-type: image/jpeg" \
		--output "kitten.jpg"
}

function get_random_kitten() {
  # 1 - width: (integer): <width - default: 300>
  # 2 - height: (integer): <height - default: 300>
  curl --request GET \
    --url "$api/$(($RANDOM % 1600 + 100))/$(($RANDOM % 1600 + 100))" \
		--user-agent "$user_agent" \
    --header "content-type: image/jpeg" \
		--output "kitten.jpg"
}
