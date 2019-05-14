class Payment < ApplicationRecord
    attr_accessor :card_number, :card_cvv, :card_expires_month, :card_expires_year
    # Includes

    # Attributes

    # Associations
    belongs_to :user

    # Delegates

    # Constants

    # Validations
    
    # Scopes

    # Callbacks

    # Constants Methods

    # Default

    def self.month_options
        Date::MONTHNAMES.compact.each_with_index.map { |name, i| ["#{i+1} - #{name}", i+1]}
    end
      
    def self.year_options
        (Date.today.year..(Date.today.year+10)).to_a
    end
      
    def process_payment
        customer = Stripe::Customer.create email: email, card: token
        
        Stripe::Charge.create customer: customer.id, 
                              amount: 1000, 
                              description: 'Premium', 
                              currency: 'usd'
    end

    private
end
