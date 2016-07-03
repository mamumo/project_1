require('minitest/autorun')
require_relative('../models/transaction')

class TestTransaction < Minitest::Test

  def setup
    @transaction = Transaction.new("amount" => "20", "date" => "2016-08-14", "description" => "shampoo", "type" => "debit")
 
  end

 def test_transaction_date
  assert_equal("2016-08-14", @transaction.date)
 end

 def test_transaction_type
  assert_equal("debit", @transaction.type)
 end

def test_transaction_amount
  assert_equal(20, @transaction.amount)
end

def test_transaction_description
  assert_equal("shampoo", @transaction.description)
end

end
