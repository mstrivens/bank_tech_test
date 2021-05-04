class Account
  def initialize
    @balance = []
  end

  def account(amount)
    @balance << amount
    if amount >= 1
      "Credit || #{@balance.sum}"
    else
      "Credit || 0 || Debit || #{amount}"
    end
  end
end
