class Person
  attr_accessor :cash, :name, :account

    def initialize(name = nil)
      set_name(name)
      @cash = 0
      @account = nil
    end

    def create_account
      @account = Account.new(owner: self)
    end

    def missing_account
      raise RuntimeError, 'No account present'
    end

    def missing_name
      raise ArgumentError, 'A name is required'
    end

    def deposit(amount)
      @account.nil? ? missing_account : deposit_funds(amount)
    end

    private

    def deposit_funds(amount)
      @cash -= amount
      @account.balance += amount
    end

    def set_name(name)
      if name.nil?
        missing_name
      else
        @name = name
      end
    end


end
