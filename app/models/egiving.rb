class Egiving < ActiveRecord::Base
    monetize :finalamount


 validates  :first_name, :presence => true
 validates  :last_name, :presence => true
  validates  :province,  :presence => true
  validates  :city, :presence => true
  validates :address,   :presence => true
  validates :postal_code, :presence => true
 
  validates_formatting_of :phone_number, :using => :us_phone

 
    
     validates_format_of :email_of_giver, :with => /.+@.+\..+/i, :message => "Invalid Email"
    
  #   validates :amountfinal, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :numericality => {:greater_than => 0, :less_than => 10}
     
    #validates :finalamount, :presence => true
   validates_numericality_of :finalamount, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :only_float => true, :greater_than => 0
   # validates :amountfinal,  :numericality => { :greater_than_or_equal_to => 1 }
    
    
   validates :name_on_card, :presence => true#, :format  => { :with =>  /^(?:[\u00c0-\u01ffa-zA-Z'-]){2,}(?:\s[\u00c0-\u01ffa-zA-Z'-]{2,})+$/i  } #/^[a-zA-Z\d\s]+$/ }
    #validates_formatting_of :name_on_card, :using => :alpha, :presence => true
    #validates_formatting_of :card_number, :using => :credit_card
  validates :card_number, :presence => true
 
        
          encrypt_with_public_key :card_number, :date_month, :date_year, :name_on_card,
             :key_pair => Rails.root.join('config','keypair.pem')

default_scope order: 'egivings.created_at DESC'


end
