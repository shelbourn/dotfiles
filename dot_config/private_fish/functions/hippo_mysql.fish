function hippo_mysql --description 'Script to connect to Hippo MySQL instance <...args>'

    # Opens up a MySQL connection without immediately executing a query
    if test -z $argv[1]
        # Opens a MySQL connection to Hippo without additional arguments
        mysql --host=$SQL_HOST --port=$SQL_PORT --user=$SQL_USER $SQL_DB
        return
    end

    # Opens a MySQL connection and immediately executes a query (argument)
    # Opens a MySQL connection to Hippo with additional arguments
    mysql --host=$SQL_HOST --port=$SQL_PORT --user=$SQL_USER $SQL_DB -e "$argv"
end
