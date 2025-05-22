function eb_features --description 'Toggles collection of new Elation Billing features'
    set is_enabled $argv

    feature_toggle ElationBilling $is_enabled
    feature_toggle ElationBillingNav $is_enabled
    feature_toggle ElationBillingIns $is_enabled
    feature_toggle ElationBillingPay $is_enabled

end
