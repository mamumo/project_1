require 'pry-byebug'

require_relative('../models/transaction.rb')
require_relative('../models/merchant.rb')
require_relative('../models/tag.rb')

Tag.delete_all()
Merchant.delete_all()
Transaction.delete_all()

tag1 = Tag.new({ 'name' => 'food'}).save
tag2 = Tag.new({ 'name' => 'beer'}).save
tag3 = Tag.new({ 'name' => 'shoes'}).save

merchant1 = Merchant.new({ 'name' => 'Tesco'})
m1 = merchant1.save
merchant2 = Merchant.new({ 'name' => 'Pub'})
m2 = merchant2.save
merchant3 = Merchant.new({ 'name' => 'Primark'})
m3 = merchant3.save

transaction1 =  Transaction.new({'merchant_id' => m1.id, 'tag_id' => tag1.id, 'amount' => 20, 'transaction_date' => '2016-07-01', 'description' => 'jam', 'type' => 'debit'})
t1 = transaction1.save
transaction2 =  Transaction.new({'merchant_id' => m2.id, 'tag_id' => tag2.id, 'amount' => 15, 'transaction_date' => '2016-07-03', 'description' => 'social', 'type' => 'debit'})
t2 = transaction2.save
transaction3 =  Transaction.new({'merchant_id' => m3.id, 'tag_id' => tag3.id, 'amount' => 50, 'transaction_date' => '2016-07-04', 'description' => 'miscellaneous', 'type' => 'debit'})
t3 = transaction3.save


binding.pry
nil