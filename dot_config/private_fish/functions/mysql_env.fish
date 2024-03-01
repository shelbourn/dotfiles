function mysql_env --description 'Restarts mysql CLI and exports env variables for mysql CLI to work with local DB'
brew services restart mysql
env_source ~/Projects/Elation/.env
end
