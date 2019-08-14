require('rails_helper')
# https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md
FactoryBot.define do
  factory :user do
    username {"test_user_rspec"}
    email {"test_user@testing.com"}
    password{"testpassword"}
  end
end
