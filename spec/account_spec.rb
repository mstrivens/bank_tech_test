require 'account'

describe Account do
  describe '#account' do
    # it 'display an amount as credit' do
    #   expect(subject.account(0)).to eq 'Credit || 0'
    # end

    it 'display an amount as credit' do
      expect(subject.account(1)).to eq 'Credit || 1'
    end

    # it 'stores multiple entries as credit' do
    #   subject.account(1)
    #   expect(subject.account(10)).to eq 'Credit || 11'
    # end

    it 'allows the user to withdraw money' do
      # new_account = Account.new
      # allow(new_account).to receive(:balance).and return(10)
      expect(subject.account(-1)).to eq 'Credit || 0 || Debit || -1'
    end
  end
end
