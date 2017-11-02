class Account
 attr_accessor :pin_code
  def initialize
    @pin_code = generate_pin
  end
    #it 'check length of a number' do
    #number = 1234
    #number_length = Math.log10(number).to_i + 1
    #expect(number_length).to eq 4

    private

    def generate_pin
      rand(1000..9999)
    end
end
