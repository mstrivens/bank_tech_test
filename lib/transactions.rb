class Transactions
  STARTING_BALANCE = 0
  attr_reader :date
  def initialize
    @balance = STARTING_BALANCE
    @date = Time.new.strftime("%d/%m/%Y")
    @transaction_history = ["Date || Credit || Debit || Balance"]
  end

  def statement
    @transaction_history.each { |row|
    puts row
    }
  end

  def credit(amount)
    increase_balance_by(amount)
    @transaction_history.insert(1, credit_transaction_string(amount))
    credit_transaction_string(amount)
  end

  def debit(amount)
    decrease_balance_by(amount)
    @transaction_history.insert(1, debit_transaction_string(amount))
    debit_transaction_string(amount)
  end

  private

  def credit_transaction_string(amount)
    "#{@date} || #{amount} || || #{@balance}"
  end

  def debit_transaction_string(amount)
    "#{@date} || || #{amount} || #{@balance}"
  end

  def increase_balance_by(amount)
    @balance += amount
  end

  def decrease_balance_by(amount)
    @balance -= amount
  end
end
