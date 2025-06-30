### **IAM**  

1. - [x] **Create a New IAM User**  
2. - [x] **Create IAM Groups and Add Users**  
3. - [ ] **Set Password Policy for IAM Users**  
4. - [x] **Enable MFA (Multi-Factor Authentication)**  
5. - [ ] **Create a Custom Inline Policy**  
6. - [ ] **Create a Role for EC2 Access**  
7. - [ ] **Simulate Policy with IAM Policy Simulator**  
8. - [ ] **Create a Role for Lambda to Access DynamoDB**  
9. - [ ] **Use Resource-Based Policy (S3 Example)**  
10. - [ ] **Audit with IAM Access Analyzer**  
11. - [ ] **Create an IAM Permissions Boundary**  
12. - [ ] **Enable and Review IAM Credential Reports**

### **EC2**  

1. - [x] **Launch a Basic EC2 Instance**  
2. - [x] **Host a Simple Website**  
3. - [x] **Create an AMI from Your Instance**  
4. - [ ] **Use Elastic IP**  
5. - [ ] **Launch EC2 Using a Launch Template**  
6. - [ ] **Create and Attach EBS Volume**  
7. - [x] **Create and Use Key Pairs**  
8. - [ ] **Use Security Groups and NACLs**  
9. - [ ] **Enable CloudWatch Monitoring**  
10. - [ ] **Create an Auto Scaling Group**  
11. - [ ] **Use EC2 User Data to Automate Setup**  
12. - [ ] **SSH into EC2 Using Systems Manager (SSM)**  
13. - [ ] **Snapshot and Restore**  
14. - [ ] **Create Custom VPC and Launch EC2 Inside It**

### **EBS**
1. - [ ] **Create and Attach an EBS Volume**  
2. - [ ] **Make EBS Volume Persistent on Reboot**  
3. - [ ] **Create a Snapshot of an EBS Volume**  
4. - [ ] **Restore an EBS Volume from a Snapshot**  
5. - [ ] **Resize an Existing EBS Volume**  
6. - [ ] **Encrypt a Volume**  
7. - [ ] **Use EBS with EC2 Auto Scaling (Launch Template)**  
8. - [ ] **Enable EBS Volume Encryption with Custom KMS Key**  
9. - [ ] **Monitor EBS Volume Metrics**  
10. - [ ] **Create and Use Multi-Attach EBS Volumes (for Nitro-based instances)**  
11. - [ ] **Automate Snapshots Using AWS Backup**  
12. - [ ] **Compare gp3 vs gp2 Volumes**  
13. - [ ] **Detach and Reattach Volume to a Different Instance**

### **AMI**

1. - [ ] **Create a Custom AMI from an EC2 Instance**
2. - [ ] **Launch a New Instance from a Custom AMI**
3. - [ ] **Create AMI with No Reboot Option**
4. - [ ] **Automate AMI Creation with AWS CLI**
5. - [ ] **Share AMI with Another AWS Account**
6. - [ ] **Copy AMI to Another Region**
7. - [ ] **Delete an Unused AMI and Snapshot**
8. - [ ] **Use AMI in a Launch Template**
9. - [ ] **Create an AMI with Encrypted Volumes**
10. - [ ] **Tag AMIs for Automation**
11. - [ ] **Use Packer to Build Custom AMIs**
12. - [ ] **Automate Daily AMI Backups (Lambda + CloudWatch)**
13. - [ ] **Audit and Track AMI Usage**

### **ELB**

1. - [ ] **Create an Application Load Balancer (ALB)**
2. - [ ] **Test Load Balancing** (Verify traffic distribution)
3. - [ ] **Add Health Checks** (Configure thresholds and intervals)
4. - [ ] **Host-Based Routing with ALB** (Route by host header)
5. - [ ] **Path-Based Routing with ALB** (Route by URL path)
6. - [ ] **Enable Access Logs for ALB** (Store logs in S3)
7. - [ ] **Use SSL/TLS with ALB (HTTPS)** (Install ACM certificate)
8. - [ ] **Create Auto Scaling Group Behind ALB** (Integration demo)
9. - [ ] **Use Network Load Balancer (NLB)** (Create TCP/UDP load balancer)
10. - [ ] **Create Classic Load Balancer (CLB)** _(Legacy)_ (For EC2-Classic)
11. - [ ] **Configure Security Groups for ALB** (Inbound/outbound rules)
12. - [ ] **Monitor with CloudWatch** (Set up metrics/alarms)
13. - [ ] **Protect ALB with WAF** (Web Application Firewall rules)
14. - [ ] **Use Sticky Sessions** (Session affinity configuration)

### **ASG**

1. - [ ] **Create a Launch Template** (Prerequisite for modern ASGs)
2. - [ ] **Create a Basic Auto Scaling Group** (Single-AZ setup)
3. - [ ] **Manually Scale Instances** (Adjust desired/min/max capacity)
4. - [ ] **Configure Target Tracking Scaling Policy** (CPU/Memory-based)
5. - [ ] **Configure Step Scaling Policy** (Custom metric thresholds)
6. - [ ] **Create Scheduled Scaling** (Time-based scaling patterns)
7. - [ ] **Enable Instance Health Checks** (EC2 + ELB health checks)
8. - [ ] **Use Lifecycle Hooks** (Pre-termination workflows)
9. - [ ] **Use Instance Refresh** (Rolling updates strategy)
10. - [ ] **Tag Instances via ASG** (Propagate tags to new instances)
11. - [ ] **Monitor with CloudWatch** (Scaling events/alarms)
12. - [ ] **Use Mixed Instance Policy** (Multiple instance types)
13. - [ ] **Automate ASG Creation** (Terraform/AWS CLI/CDK)
14. - [ ] **Blue/Green Deployment Using ASG** (With weighted routing)

### **S3**  
1. - [ ] **Create a New S3 Bucket** (Choose appropriate region and naming)  
2. - [ ] **Upload and Download Files** (Via Console/CLI/SDK)  
3. - [ ] **Organize Files with Folders** (Prefix-based organization)  
4. - [ ] **Set Permissions on a File** (ACLs, bucket policies, or IAM)  
5. - [ ] **Enable Bucket Versioning** (Protect against accidental deletions)  
6. - [ ] **Enable Object Lock** (Compliance/WORM mode)  
7. - [ ] **Encrypt S3 Objects** (SSE-S3, SSE-KMS, or SSE-C)  
8. - [ ] **Enable Static Website Hosting** (Index and error documents)  
9. - [ ] **Apply Bucket Policy for Access Control** (Cross-account or public access)  
10. - [ ] **Use Pre-Signed URLs** (Time-limited object access)  
11. - [ ] **Restrict Access Using IAM Policy** (Least-privilege principles) 
12. - [ ] **Enable Logging on a Bucket** (Store access logs in another bucket)  
13. - [ ] **Set Up Event Notification** (Trigger SQS/Lambda on uploads)  
14. - [ ] **Create a Lifecycle Rule** (Transition to S3-IA/Glacier or expire objects)  
15. - [ ] **Set Up Cross-Region Replication (CRR)** (Requires versioning)  
16. - [ ] **Enable Transfer Acceleration** (Fast uploads via CloudFront)  
17. - [ ] **Use AWS CLI to Manage S3** (`aws s3 cp/sync/ls` commands)  
18. - [ ] **Automate File Uploads with Python (Boto3)** (Scripted interactions)
### **RDS**


### **DynamoDB**


### **Lambda**


### **Route53**


### **CloudFront CDN**


### **VPC**


### **Amplify**


### **ECS**


### **EKS**

