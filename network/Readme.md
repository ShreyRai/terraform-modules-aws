1. VPC
   ↓
   Route Table belongs to a VPC
   → vpc_id

2. Association
   ↓
   Connects SUBNET → ROUTE TABLE
   → subnet_id
   → route_table_id

3. Route
   ↓
   Tells the route table:
   "For this DESTINATION, send traffic to this TARGET"
   → destination_cidr_block
   → target (igw / nat / etc.)

ec2(public) --> public subnet --> route table association --> route table --> route --> 0.0.0.0/0 -> igw