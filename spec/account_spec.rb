require 'account'

describe Account do

  before do
    @account = Account.new
    allow(@account).to receive(:date).and_return("04/05/2021")
  end

  describe '#credit' do
    it 'display an amount as credit' do
      expect(@account.credit(0)).to eq '04/05/2021 || 0 || || 0'
    end

    it 'display an amount as credit' do
      expect(subject.credit(1)).to eq '04/05/2021 || 1 || || 1'
    end

    it 'stores multiple entries as credit' do
      subject.credit(1)
      expect(subject.credit(10)).to eq '04/05/2021 || 10 || || 11'
    end

    it 'displays the data of transaction' do
      expect(subject.credit(1)).to eq '04/05/2021 || 1 || || 1'
    end
  end

  describe '#debit' do
    it 'allows the user to withdraw money' do
      expect(subject.debit(1)).to eq '04/05/2021 || || 1 || -1'
    end
  end

  describe '#statement' do
    it 'when creditted returns a transaction history' do
      subject.credit(0)
      expect(subject.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || 0 || || 0"]
    end

    it 'when creditted returns a transaction history' do
      subject.credit(2)
      expect(subject.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || 2 || || 2"]
    end

    it 'when creditted returns a transaction history' do
      subject.credit(0)
      subject.credit(1)
      expect(subject.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || 0 || || 0", "04/05/2021 || 1 || || 1"]
    end

    it 'when debitted returns a transaction history' do
      subject.debit(0)
      expect(subject.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || || 0 || 0"]
    end
  end
end
