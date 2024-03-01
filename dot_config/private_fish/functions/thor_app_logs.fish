function thor_app_logs --description 'Tails app.log for Thor with jq-formatted output'
    tail -f logs/app.log | jq
end
