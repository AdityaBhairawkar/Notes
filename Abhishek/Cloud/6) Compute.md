### **AWS Computing Services**

AWS offers a range of **computing services** tailored for various use cases, including traditional virtual servers, containers, serverless computing, and machine learning. Below is a categorized overview of these services.

**What is a Virtual Machine?** 
A Virtual Machine (VM) is an emulation of a physical computer using software. Server Virtualization allows you to easily create, copy, resize or migrate your server. Multiple VMs can run on the same physical server so you can share the cost with other customers. Imagine if your server or computer was an executable file on your computer

An **Amazon Machine Image (AMI)** is a predefined configuration for a Virtual Machine

 **EC2 is highly configurable server where you can choose AMI that affects options such as:** 
- The amount of CPUs The amount of Memory (RAM) 
- The amount of Network Bandwidth 
- The Operation System (OS) eg. Windows 10, Ubuntu, Amazon Linux 2 
- Attach multiple virtual hard-drives for storage eg. Elastic Block Store (EBS)

EC2 is also considered **the backbone of AWS** because the majority of AWS services are using EC2 as their underlying servers. eg. S3, RDS, DynamoDB, Lambdas

---

### **1. Compute Services**

 **Amazon EC2 (Elastic Compute Cloud)**

- **Purpose**: Provides scalable virtual servers in the cloud.
- **Key Features**:
    - Wide selection of instance types (CPU, GPU, memory optimized).
    - Supports auto-scaling and load balancing.
- **Use Case**: Hosting web applications, databases, or any custom software.

 **AWS Lambda**

- **Purpose**: Serverless compute service that runs code in response to events.
- **Key Features**:
    - Fully managed; no server maintenance required.
    - Pay only for compute time used.
- **Use Case**: Event-driven tasks like processing S3 uploads or API Gateway calls.

 **Amazon Lightsail**

- **Purpose**: Simplified virtual private servers for small-scale use.
- **Key Features**:
    - Includes pre-configured development stacks.
    - Easy setup for web apps or blogs.
- **Use Case**: Beginners or small-scale projects.

---

### **2. Container Services**

 **Amazon ECS (Elastic Container Service)**

- **Purpose**: Fully managed container orchestration service.
- **Key Features**:
    - Supports Docker containers.
    - Integrated with AWS services like IAM and CloudWatch.
- **Use Case**: Running microservices in a containerized environment.

 **Amazon EKS (Elastic Kubernetes Service)**

- **Purpose**: Managed Kubernetes service.
- **Key Features**:
    - Fully compatible with Kubernetes.
    - Automatically scales Kubernetes control plane.
- **Use Case**: Kubernetes-based container orchestration.

 **AWS Fargate**

- **Purpose**: Serverless compute engine for containers.
- **Key Features**:
    - Eliminates the need to manage servers.
    - Works with ECS and EKS.
- **Use Case**: Running containers without managing infrastructure.

---

### **3. Edge and Hybrid Computing**

What is Edge Computing?
When you push your computing workloads outside of your networks to run close to the destination location. eg. Pushing computing to run on phones, IoT Devices, or external servers not within your cloud network.

What is Hybrid Computing?
When you're able to run workloads on both your on-premise datacenter and AWS Virtual Private Cloud (VPC)

 **AWS Outposts**

- **Purpose**: Extends AWS infrastructure to on-premises environments.
- **Key Features**:
    - Consistent hybrid environment with AWS services.
    - Ideal for low-latency workloads.
- **Use Case**: Hybrid cloud deployments.

 **AWS Wavelength**

- **Purpose**: Delivers low-latency applications at the edge of telecom networks.
- **Key Features**:
    - Ideal for 5G applications.
- **Use Case**: Real-time gaming, AR/VR, and IoT applications.

**VMWare Cloud on AWS** allows you to **manage on-premise virtual machines using VMWare** as EC2 instances. The data-center must being using VMWare for Virtualization.

**AWS Local Zones** are **edge datacenters located outside of an AWS region** so you can use AWS closer to end destination. When you need faster computing, storage and databases in populated areas that are outside of an AWS Region

---

### **4. Specialized Compute**

 **AWS Elastic Beanstalk**

- **Purpose**: PaaS for deploying and scaling web apps.
- **Key Features**:
    - Supports multiple programming languages.
    - Automatic provisioning and scaling.
- **Use Case**: Developers seeking managed environments.

 **AWS Batch**

- **Purpose**: Runs batch processing jobs.
- **Key Features**:
    - Optimizes resource allocation based on job needs.
- **Use Case**: Scientific simulations, large-scale data processing.

 **AWS ParallelCluster**

- **Purpose**: Deploys and manages High-Performance Computing (HPC) clusters.
- **Key Features**:
    - Automates cluster management.
- **Use Case**: Complex simulations, genome sequencing.

 **Amazon SageMaker**

- **Purpose**: Managed machine learning service.
- **Key Features**:
    - Simplifies building, training, and deploying ML models.
- **Use Case**: AI and ML workloads.

---

### **5. Cost Optimization**

 **Savings Plans and Spot Instances**

- **Savings Plans**: Lower costs for predictable workloads.
- **Spot Instances**: Cost-effective option for fault-tolerant or flexible workloads.

---

### **Higher Performance Computing (HPC) Services in AWS**

What is High Performance Computing (HPC)?
A cluster of hundreds of thousands of servers with fast connections between each of them with the purpose of boosting computing capacity. A When you need a supercomputer to perform computational problems too large to run on a standard computers or would take to long.

AWS provides specialized services and technologies for **High-Performance Computing (HPC)**, enabling users to process large-scale workloads, simulations, and computational tasks efficiently. Below are key offerings:


---

### **1. AWS Nitro System**

The **AWS Nitro System** is a collection of hardware and software innovations that power next-generation EC2 instances.
All new EC2 instance types use the Nitro System. 
- Nitro Cards - specialized cards for VPC, EBS and Instance Storage and controller card
- Nitro Security Chips - Integrated into motherboard. Protects hardware resources. 
- Nitro Hypervisor - lightweight hypervisor Memory and CPU allocation Bare Metal-like performance
 **Key Features**:

- **Improved Performance**: Offloads functions like storage and networking to dedicated hardware.
- **Enhanced Security**: Nitro cards ensure hypervisor isolation for tenant security.
- **Efficient Resource Utilization**: Provides nearly all host resources to the instances.

 **Use Case**:

Optimized for workloads requiring high security, speed, and scalability, such as databases, analytics, and HPC applications.

---

### **2. Bare Metal Instances**

**Bare Metal Instances** provide direct access to physical servers without a hypervisor, offering maximum performance for compute-intensive tasks. The M5 and R5 EC2 instances run are bare metal.

**Bottlerocket** is a Linux-based open-source operation system that is purpose-built by AWS for running containers on Virtual Machines or bare metal hosts

 **Key Features**:

- **Hypervisor-Free Access**: Directly utilizes server hardware.
- **Customizable**: Supports BYO (Bring Your Own) hypervisors and virtualization tools.
- **High Scalability**: Works with services like Auto Scaling and Elastic Load Balancing.

 **Use Case**:

Ideal for applications requiring:

- Specialized hardware configurations.
- Performance similar to on-premises systems.
- Licensing restrictions (e.g., VMware).

---

### **3. AWS ParallelCluster**

**AWS ParallelCluster** is an open-source tool that automates the creation and management of HPC clusters in AWS.

 **Key Features**:

- **Cluster Management**: Automates provisioning, configuration, and scaling of compute, storage, and networking.
- **Scalability**: Easily scales to hundreds or thousands of nodes.
- **Integration**: Supports popular HPC tools like Slurm and MPI.

 **Use Case**:

Best for running:

- Computational fluid dynamics.
- Genomics and bioinformatics simulations.
- Weather modeling and seismic analysis.

---

 **Benefits of HPC Services in AWS**

1. **Scalability**: Scale to thousands of cores for demanding applications.
2. **Flexibility**: Choose from a variety of instances, including GPU and memory-optimized options.
3. **Cost-Effective**: Use Spot Instances and Savings Plans to reduce costs.
4. **Global Availability**: Access resources across multiple AWS regions.
5. **Performance**: Low-latency networking and high-throughput storage options.

---
### **Cost and Capacity Management in AWS Computing Services**

AWS provides a range of services and tools that help manage **costs**, **capacity**, and **scalability** for computing resources. Below is an overview of these services and how they optimize usage.

---

### **1. EC2 Spot Instances, Reserved Instances, and Savings Plans**

 **EC2 Spot Instances**

- **Purpose**: Spot Instances allow you to take advantage of unused EC2 capacity at **up to 90%** savings compared to on-demand instances.
- **Key Features**:
    - Can be interrupted by AWS with a two-minute warning.
    - Ideal for fault-tolerant workloads (e.g., big data analysis, rendering).
- **Use Case**: Large-scale batch jobs, scientific simulations, data analysis.

 **EC2 Reserved Instances**

- **Purpose**: Reserved Instances allow you to reserve EC2 capacity for a term (1 or 3 years) at a discounted rate compared to on-demand pricing.
- **Key Features**:
    - Significant discount (up to 75%) for long-term commitments.
    - Flexible plans (Standard, Convertible).
- **Use Case**: Predictable workloads, enterprise applications, and long-running services.

 **Savings Plans**

- **Purpose**: Savings Plans offer flexible pricing models (Compute, EC2, Lambda) with significant discounts for long-term usage.
- **Key Features**:
    - Offers up to 72% savings.
    - Applies across instance types, regions, and operating systems.
- **Use Case**: Cost optimization for consistent usage.

---

### **2. AWS Batch**

- **Purpose**: AWS Batch enables you to easily run large-scale batch processing workloads on AWS.
- **Key Features**:
    - Automatically provisions the required compute resources based on workload requirements.
    - Supports multiple job types (array jobs, single jobs).
- **Use Case**: Batch processing for workloads like media transcoding, data analytics, and genomics.

---

 **3. AWS Compute Optimizer**

- **Purpose**: AWS Compute Optimizer recommends optimal instance types for your workloads based on historical usage.
- **Key Features**:
    - Analyzes EC2 and Auto Scaling group performance.
    - Provides instance type recommendations to improve cost efficiency.
- **Use Case**: Optimizing instance type selection to balance performance and cost.

---

 **4. EC2 Autoscaling Groups (ASGs)**

- **Purpose**: EC2 Autoscaling Groups automatically adjust the number of EC2 instances in response to traffic load.
- **Key Features**:
    - Ensures that your application is highly available by maintaining a specified number of instances.
    - Scales up and down based on demand.
- **Use Case**: Dynamic web applications, microservices, and any workload requiring scalability.

---

 **5. Elastic Load Balancer (ELB)**

- **Purpose**: ELB automatically distributes incoming application traffic across multiple EC2 instances to ensure high availability and fault tolerance.
- **Key Features**:
    - Types: **Application Load Balancer (ALB)**, **Network Load Balancer (NLB)**, and **Classic Load Balancer (CLB)**.
    - Supports dynamic scaling of instances.
- **Use Case**: Distributing traffic for applications, websites, and APIs.

---

 **6. AWS Elastic Beanstalk (EB)**

- **Purpose**: Elastic Beanstalk simplifies the deployment and management of applications by handling the infrastructure provisioning, load balancing, scaling, and monitoring.
- **Key Features**:
    - Supports multiple platforms (Java, Node.js, Python, .NET, etc.).
    - Automatic scaling and monitoring.
- **Use Case**: Developers looking for a managed service to deploy web apps or microservices.

---

 **Cost and Capacity Management Strategy**

- **Cost Savings**:
    
    - Spot Instances and Savings Plans can drastically reduce EC2 costs.
    - Use **AWS Compute Optimizer** to ensure you are not over-provisioning instances.
- **Capacity Management**:
    
    - **EC2 Autoscaling** ensures that your infrastructure scales automatically according to demand.
    - **Elastic Load Balancer (ELB)** ensures that your resources are distributed and utilized optimally.
- **Best Practices**:
    
    - Use **EC2 Reserved Instances** or **Savings Plans** for predictable workloads.
    - For burstable, non-mission-critical workloads, use **EC2 Spot Instances**.
    - Scale efficiently using **Auto Scaling Groups** with ELB for traffic distribution.

---
