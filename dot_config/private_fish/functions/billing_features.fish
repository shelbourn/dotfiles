function billing_features --description 'Enables collection of new Billing features'
    feature_toggle BillDxNavigator 1
    feature_toggle BillingHomeEnabled 1
    feature_toggle NewBillDialog 1
    feature_toggle NewBillRules 1
end
