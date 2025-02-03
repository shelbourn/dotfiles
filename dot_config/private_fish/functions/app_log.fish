function app_log --description 'tails the thor app logs with jq'
tail -f logs/app.log | jq
end
