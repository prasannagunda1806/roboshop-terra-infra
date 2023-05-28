variable "instances" {
    default ={
      frontend = {
      name = "frontend"
      type = "t3.mmicro"
   }
   user = {
       name = "catalogue"
       type = "t3.small"
   }
  }
 } 
