require 'transactions'

describe Transactions do

  before do
    @account = Transactions.new
    allow(@account).to receive(:date).and_return("04/05/2021")
  end

  describe '#credit' do
    it 'display an amount as credit' do
      expect(@account.credit(0)).to eq '04/05/2021 || 0 || || 0'
    end

    it 'display an amount as credit' do
      expect(@account.credit(1)).to eq '04/05/2021 || 1 || || 1'
    end

    it 'stores multiple entries as credit' do
      @account.credit(1)
      expect(@account.credit(10)).to eq '04/05/2021 || 10 || || 11'
    end

    it 'displays the data of transaction' do
      expect(@account.credit(1)).to eq '04/05/2021 || 1 || || 1'
    end
  end

  describe '#debit' do
    it 'allows the user to withdraw money' do
      expect(@account.debit(1)).to eq '04/05/2021 || || 1 || -1'
    end
  end

  describe '#statement' do
    it 'when creditted returns a transaction history' do
      @account.credit(0)
      expect(@account.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || 0 || || 0"]
    end

    it 'when creditted returns a transaction history' do
      @account.credit(2)
      expect(@account.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || 2 || || 2"]
    end

    it 'when creditted twice it returns the transactions in reverse chronological order' do
      @account.credit(0)
      @account.credit(1)
      expect(@account.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || 1 || || 1", "04/05/2021 || 0 || || 0"]
    end

    it 'when debitted returns a transaction history' do
      @account.debit(0)
      expect(@account.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || || 0 || 0"]
    end

    it 'when debitted returns a transaction history' do
      @account.debit(1)
      expect(@account.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || || 1 || -1"]
    end

    it 'when debitted twice it returns the transactions in reverse chronological order' do
      @account.debit(0)
      @account.debit(1)
      expect(@account.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || || 1 || -1", "04/05/2021 || || 0 || 0"]
    end
  end
end
