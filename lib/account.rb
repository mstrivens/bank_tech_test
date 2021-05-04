class Account
  def initialize
    @balance = []
  end

  def account(amount)
    @balance << amount
    "Credit || #{@balance.sum}"
  end
end
