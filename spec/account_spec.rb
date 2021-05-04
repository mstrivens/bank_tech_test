require 'account'

describe Account do
  describe '#credit' do
    it 'display an amount as credit' do
      expect(subject.credit(0)).to eq 'Credit || 0 || Debit || || Balance || 0'
    end

    it 'display an amount as credit' do
      expect(subject.credit(1)).to eq 'Credit || 1 || Debit || || Balance || 1'
    end

    it 'stores multiple entries as credit' do
      subject.credit(1)
      expect(subject.credit(10)).to eq 'Credit || 10 || Debit || || Balance || 11'
    end
  end

  describe '#debit' do
    it 'allows the user to withdraw money' do
      expect(subject.debit(1)).to eq 'Credit ||  || Debit || 1 || Balance || -1'
    end
  end
end
