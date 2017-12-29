# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :submit_request do
    user nil
    task nil
    message "MyText"
    request_user_id 1
    status 1
  end
end
