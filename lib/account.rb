class Account
  STANDARD_VALIDITY_YRS = 5
 attr_accessor :pin_code, :balance
  def initialize
    @pin_code = generate_pin
    @balance = 0

    def exp_date
      Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end
  end
    private
    def generate_pin
      rand(1000..9999)
    end
end
