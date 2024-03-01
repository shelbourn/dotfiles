function feature_toggle --description 'Toggles Hippo feature flags -- feature_toggle <featureName> [0|1]'

    # Sets local variables for each of the two arguments passed in
    set feature_flag $argv[1]
    set set_enabled $argv[2]

    # Sets local variable for Hippo MySQL connection script
    set HIPPO_MYSQL "mysql --user=root host=127.0.0.1 port=3306 el8_dev"

    # Usage tips if no arguments are passed in
    if test -z $feature_flag
        echo "Usage:"
        echo "  feature_toggle <featureName> [0|1]"
        echo "Example:"
        echo "  feature_toggle bill"
        echo "  feature_toggle BillingHomeEnabled 1"
        echo "Alternatively, use management commands:"
        echo "  ./manage.py toggle_practice_feature --feature NewBillDialog --on 65540 655364"
        echo "  ./manage.py toggle_practice_feature --feature NewBillRules --on 65540 655364"
        echo "  ./manage.py toggle_practice_feature --feature BillingHomeEnabled --on 65540 655364"
        echo "  ./manage.py populate_billing_report 65540   # elation north"
        echo "  ./manage.py populate_billing_report 655364  # elation south"
        return 1
    end

    # Returns list of feature flags matching/including term passed as first argument (no second argument)
    if test -z $set_enabled
        echo "> $HIPPO_MYSQL -e select practice_id, feature, is_on from features_practicefeature pf where pf.feature like '%$feature_flag%'"
        hippo_mysql "select practice_id, feature, is_on from features_practicefeature pf where pf.feature like '%$feature_flag%'"
        return
    end

    # Toggles value on/off (arg 2) for specified feautre (arg 1)
    echo "> $HIPPO_MYSQL -e replace into features_practicefeature (practice_id, feature, is_on) values (65540, '$feature_flag', $set_enabled)"
    hippo_mysql "replace into features_practicefeature (practice_id, feature, is_on) values (65540, '$feature_flag', $set_enabled)"
    echo "> $HIPPO_MYSQL -e replace into features_practicefeature (practice_id, feature, is_on) values (655364, '$feature_flag', $set_enabled)"
    hippo_mysql "replace into features_practicefeature (practice_id, feature, is_on) values (655364, '$feature_flag', $set_enabled)"
    hippo_mysql "select practice_id, feature, is_on from features_practicefeature pf where pf.feature like '%$feature_flag%'"
end
