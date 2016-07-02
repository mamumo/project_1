require('minitest/autorun')
require_relative('../models/merchant')

class TestMerchant < Minitest::Test
  
  def setup
    @merchant = Merchant.new("name" => "Tesco")
  end

 def test_tag_name
  assert_equal("Tesco", @merchant.name)
 end

end