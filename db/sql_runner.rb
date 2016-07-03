def run( sql )
   begin
     db = PG.connect({ dbname: 'money_cashboard.sql', host: 'localhost' })
     result = db.exec( sql )
   ensure
     db.close
   end
   return result
end