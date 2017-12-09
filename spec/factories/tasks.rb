# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    user nil
    title "MyString"
    content "MyText"
    deadline "2017-10-08 16:38:53"
    charge_id 1
    status 1
  end
end
