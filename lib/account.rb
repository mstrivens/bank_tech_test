class Account
  def initialize
    @balance = []
  end

  def account(amount)
    @balance << amount
    if amount >= 1
      credit(amount)
    else
      debit(amount)
    end
  end

  def credit(amount)
    "Credit || #{amount} || Debit || || Balance || #{@balance.sum}"
  end

  def debit(amount)
    "Credit ||  || Debit || #{amount}"
  end
end
