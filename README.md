# README


This is the booking system for smile309

    1.Before you run this api plz remember to run "db:seed", to make rooms' data
    
    2.When enter "/api/rooms", it will show all rooms information for you
    
    3.If you want to book a room. Plz at homepage and open console
      then typing "let order = new Order(2,"2018-4-25","2018-4-26")". These three parameters are room_id,check_in,check_out.
      After making new oreder ,next plz type "order.create(res => {console.log(res)})" to create order.
    
    4.You can enter "/api/rooms?check_in=2018-04-25&check_out=2018-04-26" to check if there is an empty room or not.
    
    5.You can enter "/api/orders" to check existent orders


