
class Order {

  constructor(room_id, check_in, check_out){
    this.room_id= room_id;
    this.check_in= new Date(check_in);
    this.check_out= new Date(check_out);

  }

  create(callback){
    axios.post('/api/orders',{
      order:{ room_id:  this.room_id,
           check_in: this.check_in,
           check_out: this.check_out
       }
    })
      .then(res =>{
        callback(res)
      })
  }
  
}
