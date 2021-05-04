require 'statement'

describe Statement do
  before do
    @transaction = Transaction.new
  end

  describe '#print_statement' do
    it 'when creditted returns a transaction history' do
      @transaction.credit(2)
      expect(subject.print_statement(@transaction.transaction_history)).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || 2 || || 2"]
    end
    it 'when creditted twice it returns the transactions in reverse chronological order' do
      @transaction.credit(0)
      @transaction.credit(1)
      expect(subject.print_statement(@transaction.transaction_history)).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || 1 || || 1", "04/05/2021 || 0 || || 0"]
    end

    it 'when debitted returns a transaction history' do
      @transaction.debit(1)
      expect(subject.print_statement(@transaction.transaction_history)).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || || 1 || -1"]
    end

    it 'when debitted twice it returns the transactions in reverse chronological order' do
      @transaction.debit(0)
      @transaction.debit(1)
      expect(subject.print_statement(@transaction.transaction_history)).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || || 1 || -1", "04/05/2021 || || 0 || 0"]
    end
  end
end
