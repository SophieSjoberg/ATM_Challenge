require './lib/account.rb'
require 'date'

describe Account do
let(:person) {instance_double('Person', name: 'Sophie')}
subject { described_class.new({owner:person}) }

  it 'is expected to have owner' do
    expect(subject.owner).to eq person
  end

  it 'is expected to have a 4 digit pin number on initialize' do
    pin_length = Math.log10(subject.pin_code).to_i + 1
    expect(pin_length).to eq 4
  end

  it 'is expected to have a balance of 0 on initialize' do
    expect(subject.balance).to eq 0
  end

  it 'deactivates account using Instance method' do
    Account.deactivate(subject)
    expect(subject.account_status).to eq :deactivated
  end

  it 'is expected to have an expiry date on initialize' do
    expected_date = Date.today.next_year(5).strftime('%m/%y')
    expect(subject.exp_date).to eq expected_date
  end

  it 'is expected to have :active status on initialize' do
    expect(subject.account_status).to eq :active
  end
end
