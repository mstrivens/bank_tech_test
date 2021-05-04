class Account
  attr_accessor :date
  def initialize
    @balance = 0
    @date = Time.new.strftime("%d/%m/%Y")
    @transaction_history = ["Date || Credit || Debit || Balance"]
  end

  def statement
    # "Date || Credit || Debit || Balance\n04/05/2021 || || || \n" +
    @transaction_history.each { |row|
    puts row
    }
  end

  def credit(amount)
    credit_balance(amount)
    @transaction_history << credit_transaction_string(amount)
    credit_transaction_string(amount)
  end

  def debit(amount)
    debit_balance(amount)
    debit_transaction_string(amount)
  end

  private

  def credit_transaction_string(amount)
    "#{@date} || #{amount} || || #{@balance}"
  end

  def debit_transaction_string(amount)
    "Date || #{@date} || Credit ||  || Debit || #{amount} || Balance || #{@balance}"
  end

  def credit_balance(amount)
    @balance += amount
  end

  def debit_balance(amount)
    @balance -= amount
  end
end
