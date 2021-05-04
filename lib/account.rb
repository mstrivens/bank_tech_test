class Account
  def initialize
    @balance = 0
  end

  def account(amount)
    if amount >= 1
      credit(amount)
    else
      debit(amount)
    end
  end

  def credit(amount)
    @balance += amount
    "Credit || #{amount} || Debit || || Balance || #{@balance}"
  end

  def debit(amount)
    @balance -= amount
    "Credit ||  || Debit || #{amount}"
  end
end
