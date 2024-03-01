function thor_features --description 'Enables / disabled collection of new LMD features'
    # Guard clause to check whether an arg exists
    if test -z $argv
        echo "An argument value (1 - true, 0 - false) is required"
        echo "Exiting..."
        return 1
    end

    # Sets boolean value (enable / disable) to local var
    set should_enable $argv

    # Guard clause to check whether the arg is a valid value (1 or 0)
    if string match -qr -v '^[0,1]+$' -- "$should_enable"
        echo "Argument value must be either 0 (false) or 1 (true)"
        echo "Exiting..."
        return 1
    end

    # Updates the local DB values for LMD features with the boolean arg value
    feature_toggle ElationBilling $should_enable
    feature_toggle ElationBillingIns $should_enable
    feature_toggle ElationBillingNav $should_enable
    feature_toggle ElationBillingPay $should_enable
    feature_toggle ElationBillingRTE $should_enable
end
