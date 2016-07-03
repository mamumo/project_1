require 'pry-byebug'

require_relative('../models/transaction.rb')
require_relative('../models/merchant.rb')
require_relative('../models/tag.rb')

Tag.delete_all()
Merchant.delete_all()
Transaction.delete_all()

tag1 = Tag.new({ 'name' => 'food'})
t1 = tag1.save

merchant1 = Merchant.new({ 'name' => 'Tesco'})
m1 = merchant1.save
merchant2 = Merchant.new({ 'name' => 'Pub'})
m2 = merchant2.save
merchant3 = Merchant.new({ 'name' => 'Primark'})
m3 = merchant3.save

transaction1 =  Transaction.new({'merchant_id' => m1.id, 'tag_id' => t1.id, 'amount' => 20, 'transaction_date' => 2016-07-01, 'description' => 'jam', 'type' => 'debit'})
t1 = transaction1.save