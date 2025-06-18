### **Cloud-Native Networking Services (AWS)**

Cloud-native networking services are designed to integrate seamlessly into cloud environments, providing scalable, flexible, and efficient ways to manage communication and data transfer within and across cloud resources. AWS offers a variety of services that support these functions, allowing businesses to build secure and efficient networks for their cloud applications.

---

 **1. Amazon Virtual Private Cloud (VPC)**

**Amazon VPC** allows you to create a logically isolated network within the AWS cloud, where you can define your IP address range, create subnets, and configure route tables and network gateways.

- **Use Cases**:
    
    - Isolated networks for applications.
    - Hybrid cloud architectures with on-premises networks.
    - Network segmentation and microservices architectures.
- **Key Features**:
    
    - **Subnets**: Divide the VPC into subnets to isolate resources and manage traffic.
    - **Route Tables**: Control routing of traffic within the VPC.
    - **Internet Gateways**: Allow communication with the public internet.
    - **NAT Gateways**: Enable private instances to access the internet securely.
    - **Peering Connections**: Allow inter-VPC communication.
    - **VPC Flow Logs**: Capture information about IP traffic.
- **Pricing**:
    
    - Based on **data transfer**, **NAT gateway usage**, and **VPN connections**.

---

 **2. AWS Direct Connect**

**AWS Direct Connect** provides dedicated network connections from your on-premises data center to AWS. This allows for faster and more reliable connections compared to the public internet.

- **Use Cases**:
    
    - Hybrid cloud environments.
    - Applications requiring high-bandwidth, low-latency connections.
    - Secure connections between on-premises infrastructure and AWS.
- **Key Features**:
    
    - **Private Connection**: Establish a private connection to AWS for more consistent performance.
    - **Bandwidth Options**: Select bandwidth options ranging from 1 Gbps to 100 Gbps.
    - **Integration with VPC**: Directly connect your on-premises data centers to AWS VPCs.
    - **Redundancy**: Can provide highly available, fault-tolerant connections with multiple physical connections.
- **Pricing**:
    
    - Based on **data transfer** and **connection capacity**.

---

 **3. Elastic Load Balancing (ELB)**

**Elastic Load Balancing** automatically distributes incoming application traffic across multiple targets, such as EC2 instances, containers, and IP addresses, to ensure high availability and fault tolerance.

- **Use Cases**:
    
    - Distributing traffic to web servers.
    - Improving the availability and scalability of web applications.
    - Ensuring fault tolerance by distributing traffic across multiple availability zones.
- **Key Features**:
    
    - **Types of Load Balancers**:
        - **Application Load Balancer (ALB)**: Best suited for HTTP/HTTPS traffic at the application layer.
        - **Network Load Balancer (NLB)**: Best for TCP traffic at the network layer.
        - **Classic Load Balancer**: Older generation, supports both HTTP/HTTPS and TCP traffic.
    - **Auto Scaling Integration**: Automatically adjusts to changes in traffic load.
    - **Security**: Integrated with **AWS Certificate Manager (ACM)** for SSL/TLS management.
    - **Cross-Zone Load Balancing**: Distribute traffic evenly across instances in multiple availability zones.
- **Pricing**:
    
    - Based on **number of hours** and **data processed** by the load balancer.

---

 **4. AWS Global Accelerator**

**AWS Global Accelerator** improves the availability and performance of your global applications by routing user traffic to the nearest AWS region, reducing latency and improving fault tolerance.

- **Use Cases**:
    
    - Accelerating global application performance.
    - Reducing latency for users located in different geographical regions.
    - Improving disaster recovery and high availability for applications.
- **Key Features**:
    
    - **Global Traffic Distribution**: Automatically routes traffic to the nearest healthy AWS region.
    - **Static IP Addresses**: Provides fixed, anycast IP addresses to access your applications globally.
    - **Health Checks**: Monitors the health of your endpoints and reroutes traffic if necessary.
    - **Cross-region Failover**: Automatically switches traffic to a healthy region in case of a failure.
- **Pricing**:
    
    - Based on **number of accelerators** and **data transfer**.

---
**5. Amazon Route 53**

**Amazon Route 53** is a scalable and highly available **DNS (Domain Name System)** web service. It connects user requests to infrastructure running in AWS, such as EC2 instances, load balancers, and S3 buckets.

- **Use Cases**:
    
    - Domain registration and DNS routing for websites and applications.
    - Traffic management across multiple AWS regions.
    - Health checks for application endpoints.
- **Key Features**:
    
    - **DNS Management**: Easily configure and manage DNS records for domains.
    - **Health Checks**: Monitors the health of resources and automatically reroutes traffic to healthy endpoints.
    - **Routing Policies**: Supports **latency-based routing**, **geolocation routing**, **weighted routing**, and **failover routing**.
    - **Domain Registration**: Allows you to register domain names directly through Route 53.
- **Pricing**:
    
    - Based on **number of hosted zones** and **DNS queries**.

---

 **6. AWS Transit Gateway**

**AWS Transit Gateway** allows you to connect multiple VPCs and on-premises networks to a central gateway, simplifying the network architecture and reducing the need for complex peering connections.

- **Use Cases**:
    
    - Connecting multiple VPCs across different AWS accounts.
    - Simplifying hybrid cloud architectures with on-premises connectivity.
    - Centralizing traffic flow for security and monitoring.
- **Key Features**:
    
    - **VPC Peering Simplification**: Simplifies the management of inter-VPC traffic.
    - **Centralized Routing**: Provides a central hub for controlling traffic between VPCs.
    - **Support for On-Premises Networks**: Allows seamless connectivity between on-premises networks and AWS VPCs.
    - **Multi-Region Support**: Connects VPCs across AWS regions.
- **Pricing**:
    
    - Based on **data processing** and **number of connections**.

---

 **7. AWS VPN (Virtual Private Network)**

**AWS VPN** allows you to securely connect your on-premises network or client to AWS resources over an encrypted connection. This can be done using either **AWS Site-to-Site VPN** or **AWS Client VPN**.

- **Use Cases**:
    
    - Secure connection between on-premises data centers and AWS.
    - Remote access to AWS resources for users.
    - Extending an on-premises network to AWS.
- **Key Features**:
    
    - **Site-to-Site VPN**: Connects an on-premises network to a VPC in AWS.
    - **Client VPN**: Provides secure remote access for individual users to AWS VPC resources.
    - **Encryption**: All traffic over the VPN is encrypted for security.
    - **Highly Available**: Supports multi-VPN connections for fault tolerance.
- **Pricing**:
    
    - Based on **data transfer** and **VPN connection usage**.

---

 **8. AWS Network Firewall**

**AWS Network Firewall** is a managed, scalable firewall service that provides protection to your Amazon VPC by inspecting traffic and filtering malicious or unwanted data.

- **Use Cases**:
    
    - Protecting VPCs from unwanted inbound or outbound traffic.
    - Securing hybrid cloud environments.
    - Enhancing security compliance by filtering network traffic.
- **Key Features**:
    
    - **Stateful Inspection**: Examines traffic flows and allows filtering based on predefined rules.
    - **Integration**: Works seamlessly with other AWS services such as **VPC**, **Route 53**, and **CloudWatch**.
    - **Scalability**: Scales automatically with your network traffic.
    - **Rule Groups**: Predefined and customizable rule groups for specific security needs.
- **Pricing**:
    
    - Based on **usage** and **processing units**.

---

 **Summary of AWS Cloud-Native Networking Services**

- **Amazon VPC**: Create a virtual network within AWS to control IP address ranges, subnets, and route tables.
- **AWS Direct Connect**: Provides dedicated network connections from your on-premises data center to AWS.
- **Elastic Load Balancing (ELB)**: Distribute incoming traffic across multiple targets for better availability and performance.
- **AWS Global Accelerator**: Routes traffic to the nearest AWS region to reduce latency and improve performance.
- **Amazon Route 53**: Scalable DNS service for domain registration, routing, and health checks.
- **AWS Transit Gateway**: Simplifies VPC and on-premises network connections.
- **AWS VPN**: Securely connect on-premises or remote users to AWS resources.
- **AWS Network Firewall**: Provides firewall protection for VPCs.


### **AWS Enterprise Hybrid Networking**

**Definition**:  
AWS Enterprise Hybrid Networking allows businesses to integrate their on-premises infrastructure with AWS Cloud resources, enabling a hybrid architecture. This hybrid setup ensures secure, reliable, and scalable network connections for businesses running applications both on-premises and in the cloud.

---

 **Key Points**:

1. **AWS Direct Connect**:
    
    - Establishes a **private, dedicated network connection** from on-premises data centers to AWS.
    - **Reduces latency**, provides **consistent performance**, and **lowers network costs** compared to using the public internet.
2. **AWS Site-to-Site VPN**:
    
    - Creates a **secure, encrypted VPN tunnel** between on-premises networks and AWS VPCs.
    - **Uses the public internet** for traffic, but with encryption for security.
3. **AWS Transit Gateway**:
    
    - A **centralized hub** for connecting multiple VPCs and on-premises networks.
    - Simplifies routing and network management, enabling **scalability** and efficient communication.
4. **AWS Cloud WAN**:
    
    - A **fully managed wide area network (WAN)** that enables seamless global connectivity between on-premises infrastructure and AWS.
    - Offers **centralized management** of networks through the AWS Console.
5. **AWS Global Accelerator**:
    
    - Routes global application traffic to the **optimal AWS region** for improved performance.
    - Uses **static Anycast IP addresses** for simplified access and routing.

---

 **Highlighted Key Points**:

- **Private Connectivity**: Direct Connect provides a **secure, high-performance connection** independent of the public internet.
- **Multi-Region and Multi-VPC Support**: Transit Gateway allows businesses to connect multiple VPCs and regions through a **centralized hub**.
- **Secure Communication**: Site-to-Site VPN ensures **encrypted communication** between on-premises infrastructure and AWS VPCs.
- **Global Network Integration**: Cloud WAN and Global Accelerator enable seamless **global connectivity** and performance optimization.

---
### **Virtual Private Cloud (VPC) and Subnets**

**Definition**:  
A **Virtual Private Cloud (VPC)** is a logically isolated section of the AWS Cloud where you can define and control your virtual network. It enables the creation of resources such as EC2 instances, databases, and other AWS services, which can be securely connected and configured. Within a VPC, **subnets** are subdivisions of the IP address range that allow you to organize and secure your resources by grouping them according to function, security, and availability.

---
CIDR Range of 10.0.0.0/16 = 65,536 IP Addresses

Subnets a logical partition of an IP network into multiple smaller network segments. You are breaking up your IP range for VPC into smaller networks.

Subnets need to have a smaller CIDR range than to the VPC represent their portion. eg Subnet CIDR Range 10.0.0.0/24 = 256 IP Addresses

A Public Subnet is one that can reach the internet 
A Private Subnet is one that cannot reach the internet

 **Key Points**:

1. **VPC (Virtual Private Cloud)**:
    
    - **Isolated Network**: A VPC is an isolated virtual network within AWS where you control networking aspects like IP address range, subnets, and route tables.
    - **Customizable**: You can define your own **IP address range**, **subnet configurations**, and set up network **security groups** and **network ACLs**.
    - **Connectivity**: VPCs can connect to on-premises networks using **VPN**, **Direct Connect**, or **AWS Transit Gateway**.
2. **Subnets**:
    
    - **Subnets** are divisions of your VPC's IP address range, allowing you to group resources based on security and operational needs.
    - **Public Subnets**: Subnets that are connected to the **internet via an Internet Gateway**. Resources in this subnet can be accessed publicly.
    - **Private Subnets**: Subnets that do not have direct access to the internet, typically used for **backend resources** like databases and application servers.
    - **Elastic IPs and NAT Gateways**: To enable internet access for private subnet resources, you can use **NAT Gateways** or **Elastic IPs**.
3. **Internet Gateway (IGW)**:
    
    - A VPC can connect to the internet using an **Internet Gateway**, enabling **two-way communication** between the VPC and the internet.
4. **Route Tables**:
    
    - Route tables define how traffic is directed between subnets within a VPC and to/from external networks.
    - **Public subnets** have routes to the **Internet Gateway**; **private subnets** may route traffic through a **NAT Gateway** to access the internet.
5. **VPC Peering**:
    
    - Allows **communication** between two VPCs (in the same or different regions) using **private IP addresses**, enabling inter-VPC traffic.

---

 **Highlighted Key Points**:

- **Network Isolation**: A VPC provides **network isolation** to secure AWS resources and control traffic flow.
- **Subnets for Security**: Subnets help **segregate** resources for security and operational efficiency.
- **Public vs Private**: Resources in **public subnets** can access the internet directly, while **private subnets** typically route traffic via a **NAT Gateway**.
- **Connectivity Options**: VPCs can be connected to on-premises data centers through **VPN**, **Direct Connect**, or **Transit Gateway** for a hybrid architecture.

---
### **Security Groups and Network Access Control Lists (NACLs)**

**Definition**:  
**Security Groups** and **Network Access Control Lists (NACLs)** are both used to control inbound and outbound traffic to and from resources in an AWS VPC. However, they operate at different layers and with different rules:

- **Security Groups** are **stateful** and operate at the instance level, controlling traffic to resources such as EC2 instances.
- Acts as a virtual firewall at the instance level Implicitly denies all traffic. You create only Allow rules. eg. Allow an EC2 instance access on port 22 for SSH 
- eg. You cannot block a single IP address.

- **NACLs** are **stateless** and operate at the subnet level, providing an additional layer of security by controlling traffic entering or leaving a subnet.
- Network Access Control Lists (NACLS) Acts as a virtual firewall at the subnet level You create Allow and Deny rules.
- eg. Block a specific IP address known for abuse

---

 **Key Points**:

#### **Security Groups**:

1. **Stateful**:
    
    - Traffic that is allowed inbound is automatically allowed outbound, and vice versa.
    - This means if an instance responds to an incoming request, the response is allowed even if the outbound rule does not explicitly allow it.
2. **Instance-Level Protection**:
    
    - Security Groups are associated with **individual EC2 instances** or resources in the VPC, such as Load Balancers or RDS instances.
3. **Rules**:
    
    - Only allow **allow rules**; **deny rules** are not supported.
    - You can configure **inbound** and **outbound rules** based on **protocols**, **ports**, and **IP address ranges** (CIDR blocks or security group IDs).
4. **Multiple Security Groups**:
    
    - An EC2 instance can have multiple Security Groups associated with it, and the rules from all Security Groups are evaluated.
5. **Default Security Group**:
    
    - When creating a VPC, a **default Security Group** is automatically created. Instances in the default Security Group can communicate with each other, but not with other instances or resources outside the group.

---

#### **Network Access Control Lists (NACLs)**:

1. **Stateless**:
    
    - NACLs are stateless, meaning they do not automatically allow outbound traffic for any inbound rule. Each request must be explicitly allowed for both inbound and outbound traffic.
2. **Subnet-Level Protection**:
    
    - NACLs operate at the **subnet** level, controlling traffic entering or leaving an entire subnet, unlike Security Groups, which control traffic at the resource level.
3. **Rules**:
    
    - NACLs support both **allow** and **deny** rules.
    - Rules are applied in **numbered order** (lowest to highest number), and the first matching rule is applied.
4. **Default NACL**:
    
    - By default, a **default NACL** is created with **allow** rules for inbound and outbound traffic. Custom NACLs can be created with specific rules.
5. **Inbound and Outbound Rules**:
    
    - NACLs control both **inbound** and **outbound** traffic at the subnet level, providing an extra layer of security in addition to Security Groups.

---

### **Highlighted Key Points**:

- **Stateful vs Stateless**:
    
    - **Security Groups** are **stateful**, allowing responses automatically; **NACLs** are **stateless**, requiring explicit outbound rules.
- **Security Group**:
    
    - Operates at the **instance** level and can be attached to EC2 instances, controlling traffic based on **protocols, ports, and IP addresses**.
- **NACLs**:
    
    - Operates at the **subnet** level and supports both **allow** and **deny** rules, controlling traffic to and from entire subnets.
- **Combination of Both**:
    
    - Security Groups and NACLs can be used together to **enhance security** at both the **instance** and **subnet** levels, providing **defense-in-depth**.

---

