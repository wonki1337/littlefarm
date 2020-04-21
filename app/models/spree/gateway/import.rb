class Spree::Gateway::Import < Spree::Gateway
  def provider_class
    Spree::Gateway::Import
  end
  def payment_source_class
    Spree::CreditCard
  end

  def method_type
    'Import'
  end

  def purchase(amount, transaction_details, options = {})
    ActiveMerchant::Billing::Response.new(true, 'success', {}, {})
  end
end