json.array!(@egivings) do |egiving|
  json.extract! egiving, :id, :amount, :send_email_giver, :email_of_giver, :name_on_card, :name_on_card_key, :name_on_card_iv, :card_number, :card_number_key, :card_number_iv, :ccv_number, :ccv_number_key, :ccv_number_iv, :date_month, :date_month_key, :date_month_iv, :date_year, :date_year_key, :date_year_iv, :giving, :year, :card_type, :amountfinal, :propose_of_donation, :first_name, :last_name, :address, :city, :province, :country, :postal_code, :phone_number, :finalamount, :giving_year
  json.url egiving_url(egiving, format: :json)
end
