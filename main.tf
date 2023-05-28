module "sg" {
 source = "./sg"
 }
 
module "ec2" {
    source        = "./ec2"
    for_each      = variable.instances
    component     = each.value["name"]
    instance_type = each.value["type"]
    sg_id         = module.sg.sg_id
}   
 
module "route53" {
    for_each = var.instances
    component = each.value["name"]
    private_ip = module.ec2[each.value["name"]].private_ip
} 

output "ec2" {
 value = "module.ec2"  
 }