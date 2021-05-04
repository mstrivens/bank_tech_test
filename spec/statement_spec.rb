require 'statement'

describe Statement do
  describe '#print_statement' do
    it 'prints the header' do
      expect(subject.print_statement).to eq "Date || Credit || Debit || Balance"
    end
  end
end
