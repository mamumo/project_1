require('minitest/autorun')
require_relative('../models/tag')

class TestTag < Minitest::Test

  def setup
    @tag = Tag.new("name" => "food")
 
  end

 def test_tag_name
  assert_equal("food", @tag.name)
 end

end