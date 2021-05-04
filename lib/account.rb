class Account
  def initialize
    @balance = 0
    @date = Time.new.strftime("%d/%m/%Y")
  end

  def credit(amount)
    @balance += amount
    "Date || #{@date} || Credit || #{amount} || Debit || || Balance || #{@balance}"
  end

  def debit(amount)
    @balance -= amount
    "Credit ||  || Debit || #{amount} || Balance || #{@balance}"
  end
end
