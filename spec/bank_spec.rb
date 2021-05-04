# require 'bank'
#
# describe Bank do
#   it 'returns a transaction history' do
#     expect(subject.statement).to eq ["Date || Credit || Debit || Balance"]
#   end
#
#   it 'when creditted returns a transaction history' do
#     @account = Account.new
#     @account.credit(1)
#     expect(subject.statement).to eq ["Date || Credit || Debit || Balance", "04/05/2021 || 1 || || 1"]
#   end
# end
