class Account
  def initialize
    @balance = 0
  end

  def credit(amount)
    @balance += amount
    "Credit || #{amount} || Debit || || Balance || #{@balance}"
  end

  def debit(amount)
    @balance -= amount
    "Credit ||  || Debit || #{amount} || Balance || #{@balance}"
  end
end
