require('minitest/autorun')
require_relative('../models/account')

class TestAccount < Minitest::Test
  
  def setup
    transaction1 =  Transaction.new({'merchant_id' => 1, 'tag_id' => 2, 'amount' => 20, 'transaction_date' => 2016-07-01, 'description' => 'jam', 'type' => 'debit'})
    transaction2 =  Transaction.new({'merchant_id' => 2, 'tag_id' => 3, 'amount' => 20, 'transaction_date' => 2016-07-01, 'description' => 'jam', 'type' => 'debit'})
    transaction3 =  Transaction.new({'merchant_id' => 4, 'tag_id' => 6, 'amount' => 25, 'transaction_date' => 2016-07-01, 'description' => 'jam', 'type' => 'debit'})
    transaction4 =  Transaction.new({'merchant_id' => 4, 'tag_id' => 6, 'amount' => 20, 'transaction_date' => 2016-07-01, 'description' => 'toast', 'type' => 'debit'})
    @account = Account.new( [ transaction1, transaction2, transaction3, transaction4 ])

  end

  def test_total_transactions
    result = @account.total_transactions
    assert_equal( 85, result )
  end


end

# def test_total_transactions_by_tag
#   result = @account.total_transactions_by_tag('')
#   assert_equal(6, result)
# end