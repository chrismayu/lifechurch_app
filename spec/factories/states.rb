# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :state do
    name "MyString"
    country_id 1
    abbrev "MyString"
  end
end
