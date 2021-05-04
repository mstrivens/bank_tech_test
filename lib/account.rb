class Account
  def initialize
    @balance = []
  end

  def account(amount)
    if amount >= 1
      credit(amount)
    else
      debit(amount)
    end
  end

  def credit(amount)
    "Credit || #{amount}"
  end

  def debit(amount)
    "Credit || 0 || Debit || #{amount}"
  end
end
