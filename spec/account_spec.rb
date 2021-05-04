require 'account'

describe '#account' do
  it 'display an amount as credit' do
    expect(account(0)).to eq 'Credit || 0'
  end
end
