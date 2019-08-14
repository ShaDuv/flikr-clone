require('rails_helper')

# https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md
describe User do
  it 'has a username' do
    #factory bot needs this find_definitions line
    FactoryBot.find_definitions
    user = FactoryBot.create(:user)
    user.username.should eq ("test_user_rspec")
  end
end
