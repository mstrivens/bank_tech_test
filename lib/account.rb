class Account
  attr_accessor :date
  def initialize
    @balance = 0
    @date = Time.new.strftime("%d/%m/%Y")
  end

  def statement
    "Date || Credit || Debit || Balance\n04/05/2021 || || || "
  end

  def credit(amount)
    @balance += amount
    "Date || #{@date} || Credit || #{amount} || Debit || || Balance || #{@balance}"
  end

  def debit(amount)
    @balance -= amount
    "Date || #{@date} || Credit ||  || Debit || #{amount} || Balance || #{@balance}"
  end
end
