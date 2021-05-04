require 'account'

describe Account do

  before do
    @account = Account.new
    allow(@account).to receive(:date).and_return("04/05/2021")
  end

  describe '#credit' do
    it 'display an amount as credit' do
      expect(@account.credit(0)).to eq 'Date || 04/05/2021 || Credit || 0 || Debit || || Balance || 0'
    end

    it 'display an amount as credit' do
      expect(subject.credit(1)).to eq 'Date || 04/05/2021 || Credit || 1 || Debit || || Balance || 1'
    end

    it 'stores multiple entries as credit' do
      subject.credit(1)
      expect(subject.credit(10)).to eq 'Date || 04/05/2021 || Credit || 10 || Debit || || Balance || 11'
    end

    it 'displays the data of transaction' do
      expect(subject.credit(1)).to eq "Date || 04/05/2021 || Credit || 1 || Debit || || Balance || 1"
    end
  end

  describe '#debit' do
    it 'allows the user to withdraw money' do
      expect(subject.debit(1)).to eq 'Date || 04/05/2021 || Credit ||  || Debit || 1 || Balance || -1'
    end
  end

  describe '#statement' do
    it 'returns a transaction history' do
      subject.credit(0)
      expect(subject.statement).to eq "Date || Credit || Debit || Balance\n04/05/2021 || || || "
    end

    # it 'returns a transaction history' do
    #   subject.credit(2)
    #   expect(subject.statement).to eq "Date || Credit || Debit || Balance\n04/05/2021 || 2 || || 2"
    # end
  end
end
