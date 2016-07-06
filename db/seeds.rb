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
tag4 = Tag.new({ 'name' => 'make_up'}).save
tag5 = Tag.new({ 'name' => 'books'}).save
tag6 = Tag.new({ 'name' => 'gig'}).save
tag7 = Tag.new({ 'name' => 'clothes'}).save
tag8 = Tag.new({ 'name' => 'flights'}).save
tag9 = Tag.new({ 'name' => 'music'}).save

merchant1 = Merchant.new({ 'name' => 'tesco'})
m1 = merchant1.save
merchant2 = Merchant.new({ 'name' => 'pub'})
m2 = merchant2.save
merchant3 = Merchant.new({ 'name' => 'primark'})
m3 = merchant3.save
merchant4 = Merchant.new({ 'name' => 'spotify'})
m4 = merchant4.save
merchant5 = Merchant.new({ 'name' => 'h&m'})
m5 = merchant5.save
merchant6 = Merchant.new({ 'name' => 'boots'})
m6 = merchant6.save
merchant7 = Merchant.new({ 'name' => 'whsmith'})
m7 = merchant7.save
merchant8 = Merchant.new({ 'name' => 'ryanair'})
m8 = merchant8.save

transaction1 =  Transaction.new({'merchant_id' => m1.id, 'tag_id' => tag1.id, 'amount' => 20, 'transaction_date' => '2016-07-01', 'description' => 'jam', 'type' => 'debit'})
t1 = transaction1.save

transaction2 =  Transaction.new({'merchant_id' => m2.id, 'tag_id' => tag2.id, 'amount' => 15, 'transaction_date' => '2016-07-03', 'description' => 'social', 'type' => 'debit'})
t2 = transaction2.save

transaction3 =  Transaction.new({'merchant_id' => m3.id, 'tag_id' => tag3.id, 'amount' => 50, 'transaction_date' => '2016-07-04', 'description' => 'miscellaneous', 'type' => 'debit'})
t3 = transaction3.save

transaction4 =  Transaction.new({'merchant_id' => m1.id, 'tag_id' => tag1.id, 'amount' => 30, 'transaction_date' => '2016-07-01', 'description' => 'ham', 'type' => 'debit'})
t4 = transaction4.save

transaction5 =  Transaction.new({'merchant_id' => m1.id, 'tag_id' => tag1.id, 'amount' => 5, 'transaction_date' => '2016-07-05', 'description' => 'pastry', 'type' => 'debit'})
t5 = transaction5.save

transaction6 =  Transaction.new({'merchant_id' => m5.id, 'tag_id' => tag7.id, 'amount' => 100, 'transaction_date' => '2016-07-03', 'description' => 'wedding', 'type' => 'debit'})
t6 = transaction6.save

transaction7 =  Transaction.new({'merchant_id' => m7.id, 'tag_id' => tag5.id, 'amount' => 20, 'transaction_date' => '2016-07-01', 'description' => 'hp1', 'type' => 'debit'})
t7 = transaction7.save

transaction8 =  Transaction.new({'merchant_id' => m3.id, 'tag_id' => tag7.id, 'amount' => 64, 'transaction_date' => '2016-07-01', 'description' => 'summer outfit', 'type' => 'debit'})
t8 = transaction8.save

transaction9 =  Transaction.new({'merchant_id' => m4.id, 'tag_id' => tag9.id, 'amount' => 10, 'transaction_date' => '2016-07-02', 'description' => 'subscription', 'type' => 'debit'})
t9 = transaction9.save

transaction10 =  Transaction.new({'merchant_id' => m5.id, 'tag_id' => tag4.id, 'amount' => 5, 'transaction_date' => '2016-07-04', 'description' => 'blusher', 'type' => 'debit'})
t10 = transaction10.save

transaction11 =  Transaction.new({'merchant_id' => m5.id, 'tag_id' => tag3.id, 'amount' => 18, 'transaction_date' => '2016-07-04', 'description' => 'sneakers', 'type' => 'debit'})
t11 = transaction11.save

transaction12 =  Transaction.new({'merchant_id' => m1.id, 'tag_id' => tag2.id, 'amount' => 16, 'transaction_date' => '2016-07-04', 'description' => 'carry out', 'type' => 'debit'})
t12 = transaction12.save

transaction13 =  Transaction.new({'merchant_id' => m7.id, 'tag_id' => tag5.id, 'amount' => 55, 'transaction_date' => '2016-07-05', 'description' => 'hp2', 'type' => 'debit'})
t13 = transaction13.save

transaction14 =  Transaction.new({'merchant_id' => m7.id, 'tag_id' => tag5.id, 'amount' => 32, 'transaction_date' => '2016-07-02', 'hp3' => 'berlin', 'type' => 'debit'})
t14 = transaction14.save

transaction15 =  Transaction.new({'merchant_id' => m7.id, 'tag_id' => tag5.id, 'amount' => 12, 'transaction_date' => '2016-07-01', 'description' => 'hp4', 'type' => 'debit'})
t15 = transaction15.save

transaction16 =  Transaction.new({'merchant_id' => m7.id, 'tag_id' => tag5.id, 'amount' => 45, 'transaction_date' => '2016-07-04', 'description' => 'hp5', 'type' => 'debit'})
t16 = transaction16.save

transaction17 =  Transaction.new({'merchant_id' => m7.id, 'tag_id' => tag5.id, 'amount' => 50, 'transaction_date' => '2016-07-03', 'description' => 'hp6', 'type' => 'debit'})
t17 = transaction17.save

transaction18 =  Transaction.new({'merchant_id' => m2.id, 'tag_id' => tag6.id, 'amount' => 60, 'transaction_date' => '2016-07-01', 'description' => 'saw drs', 'type' => 'debit'})
t18 = transaction18.save

transaction19 =  Transaction.new({'merchant_id' => m2.id, 'tag_id' => tag2.id, 'amount' => 75, 'transaction_date' => '2016-07-05', 'description' => 'berlin', 'type' => 'debit'})
t19 = transaction19.save

transaction20 =  Transaction.new({'merchant_id' => m2.id, 'tag_id' => tag2.id, 'amount' => 10, 'transaction_date' => '2016-07-06', 'description' => 'lunch', 'type' => 'debit'})
t20 = transaction20.save


