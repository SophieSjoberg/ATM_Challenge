require './lib/account.rb'

describe account do
  let(:account) { instance_double(account_owner: 'Owner', pin_code: '1234', exp_date: '01/18', balance: 1000, account_status: :active) }
end
