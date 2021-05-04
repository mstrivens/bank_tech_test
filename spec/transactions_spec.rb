require 'transaction'

describe Transaction do

  before do
    @transaction = Transaction.new
    allow(@transaction).to receive(:date).and_return("04/05/2021")
  end

  describe '#credit' do
    it 'display an amount as credit' do
      expect(@transaction.credit(0)).to eq '04/05/2021 || 0 || || 0'
    end

    it 'display an amount as credit' do
      expect(@transaction.credit(1)).to eq '04/05/2021 || 1 || || 1'
    end

    it 'stores multiple entries as credit' do
      @transaction.credit(1)
      expect(@transaction.credit(10)).to eq '04/05/2021 || 10 || || 11'
    end

    it 'displays the data of transaction' do
      expect(@transaction.credit(1)).to eq '04/05/2021 || 1 || || 1'
    end
  end

  describe '#debit' do
    it 'allows the user to withdraw money' do
      expect(@transaction.debit(1)).to eq '04/05/2021 || || 1 || -1'
    end
  end

  # describe '#statement' do
  #   it 'when creditted returns a transaction history' do
  #     @transaction.credit(0)
  #     expect(@transaction.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || 0 || || 0"]
  #   end
  #
  #   it 'when creditted returns a transaction history' do
  #     @transaction.credit(2)
  #     expect(@transaction.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || 2 || || 2"]
  #   end
  #
  #   it 'when creditted twice it returns the transactions in reverse chronological order' do
  #     @transaction.credit(0)
  #     @transaction.credit(1)
  #     expect(@transaction.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || 1 || || 1", "04/05/2021 || 0 || || 0"]
  #   end
  #
  #   it 'when debitted returns a transaction history' do
  #     @transaction.debit(0)
  #     expect(@transaction.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || || 0 || 0"]
  #   end
  #
  #   it 'when debitted returns a transaction history' do
  #     @transaction.debit(1)
  #     expect(@transaction.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || || 1 || -1"]
  #   end
  #
  #   it 'when debitted twice it returns the transactions in reverse chronological order' do
  #     @transaction.debit(0)
  #     @transaction.debit(1)
  #     expect(@transaction.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || || 1 || -1", "04/05/2021 || || 0 || 0"]
  #   end
  # end
end
