### **Shared Responsibility Model in AWS**

The **Shared Responsibility Model** in AWS defines the division of security and operational responsibilities between **AWS (the cloud provider)** and the **customer**. AWS ensures the security **of the cloud** infrastructure, while customers are responsible for securing their data and applications **in the cloud**.

---

1. **AWS Responsibilities (Security of the Cloud)**:
    
    - **Infrastructure**: AWS manages the physical hardware, software, networking, and facilities that run AWS Cloud services.
    - **Global Infrastructure**: Includes physical security, power, cooling, and network redundancies.
    - **Managed Services**: Security for services like **AWS Lambda**, **S3**, and **DynamoDB**, where AWS handles server and runtime security.
2. **Customer Responsibilities (Security in the Cloud)**:
    
    - **Data Protection**: Customers must secure their data using encryption and access controls.
    - **Application Security**: Ensuring secure application code and implementing proper permissions.
    - **Identity & Access Management (IAM)**: Managing user permissions, roles, and policies.
    - **Networking**: Configuring firewalls, security groups, and network access controls.
3. **Varies by Service**:
    
    - The division of responsibility depends on the type of AWS service being used (e.g., **IaaS**, **PaaS**, **SaaS**).
    - **For IaaS**: Customers manage operating systems, applications, and data.
    - **For SaaS**: AWS manages more of the infrastructure and platform security.

---

 **Example**

- **AWS Responsibility**: Ensuring the physical security of data centers and maintaining S3 availability.
- **Customer Responsibility**: Configuring S3 bucket permissions and enabling encryption.

---

 **Benefits**

- **Clear Security Demarcation**: Avoids confusion by defining boundaries between AWS and customer roles.
- **Improved Security Posture**: Customers focus on securing applications and data while relying on AWS for infrastructure security.
- **Scalability**: Both AWS and customers can scale their respective security practices as needed.

---
![[Screenshot (151).png]]


### **Types of Cloud Computing Responsibilities (On-Premise, IaaS, PaaS, SaaS)**

---
 **Responsibility Matrix**

|**Responsibility**|**On-Premise**|**IaaS**|**PaaS**|**SaaS**|
|---|---|---|---|---|
|**Physical Infrastructure**|Customer|Cloud Provider|Cloud Provider|Cloud Provider|
|**Networking**|Customer|Shared (Provider/Customer)|Cloud Provider|Cloud Provider|
|**Virtualization**|Customer|Cloud Provider|Cloud Provider|Cloud Provider|
|**Operating System**|Customer|Customer|Cloud Provider|Cloud Provider|
|**Middleware**|Customer|Customer|Cloud Provider|Cloud Provider|
|**Runtime Environment**|Customer|Customer|Cloud Provider|Cloud Provider|
|**Applications**|Customer|Customer|Customer|Cloud Provider|
|**Data**|Customer|Customer|Customer|Customer|

---

 **Key Points for Each Model**

1. **On-Premise**:
    
    - **Customer Managed**: The organization is responsible for everything, including hardware, networking, storage, applications, and security.
    - Suitable for companies needing **full control** of their IT systems.
2. **Infrastructure as a Service (IaaS)**:
    
    - **Cloud Provider**: Manages physical infrastructure, networking, and virtualization (e.g., AWS EC2, Azure Virtual Machines).
    - **Customer**: Manages OS, applications, middleware, and data.
    - Ideal for companies needing flexibility to build custom environments.
3. **Platform as a Service (PaaS)**:
    
    - **Cloud Provider**: Manages hardware, OS, runtime, and middleware (e.g., AWS Elastic Beanstalk, Google App Engine).
    - **Customer**: Focuses on application development and data.
    - Suitable for **developers** who want to focus on coding rather than infrastructure management.
4. **Software as a Service (SaaS)**:
    
    - **Cloud Provider**: Manages everything, including applications and data (e.g., Gmail, Salesforce, Microsoft Office 365).
    - **Customer**: Only responsible for configuring settings and using the application.
    - Ideal for end-users looking for a **ready-to-use solution**.

---

 **Comparison**

- **Control**: On-premise offers full control; SaaS offers the least.
- **Responsibility**: Customer responsibility decreases as you move from On-Premise → IaaS → PaaS → SaaS.
- **Ease of Use**: SaaS is the easiest; On-Premise requires significant effort and resources.

---
### **Shared Responsibility Model for Compute in AWS**

 **Overview**

The shared responsibility for compute services varies depending on the model—**IaaS**, **PaaS**, **SaaS**, or **FaaS**. Below is a breakdown of responsibilities and examples.

---

 **Responsibility Matrix**

| **Responsibility**          | **IaaS** | **PaaS** | **SaaS** | **FaaS** |
| --------------------------- | -------- | -------- | -------- | -------- |
| **Physical Infrastructure** | AWS      | AWS      | AWS      | AWS      |
| **Networking**              | Shared   | Shared   | AWS      | AWS      |
| **Virtualization**          | AWS      | AWS      | AWS      | AWS      |
| **Operating System**        | Customer | AWS      | AWS      | AWS      |
| **Middleware**              | Customer | AWS      | AWS      | AWS      |
| **Runtime Environment**     | Customer | AWS      | AWS      | AWS      |
| **Application Code**        | Customer | Customer | AWS      | Customer |
| **Data**                    | Customer | Customer | Customer | Customer |

---

 **Key Points for Each Model**

1. **Infrastructure as a Service (IaaS)**:
    
    - **Customer Responsibility**: Manage the operating system, runtime, applications, middleware, and data.
    - **AWS Responsibility**: Physical infrastructure, virtualization, and basic networking.
    - **Example**: **Amazon EC2** (Elastic Compute Cloud).
    - **Use Case**: Custom environments requiring maximum flexibility.
2. **Platform as a Service (PaaS)**:
    
    - **Customer Responsibility**: Manage the application and data; AWS handles everything else.
    - **AWS Responsibility**: Operating system, middleware, runtime, and infrastructure.
    - **Example**: **AWS Elastic Beanstalk**.
    - **Use Case**: Application developers who need a managed environment.
3. **Software as a Service (SaaS)**:
    
    - **Customer Responsibility**: Manage user data and configuration settings.
    - **AWS Responsibility**: Everything else, including applications.
    - **Example**: **Amazon Workspaces**, **Amazon Chime**.
    - **Use Case**: End-users seeking ready-to-use solutions.
4. **Function as a Service (FaaS)**:
    
    - **Customer Responsibility**: Write and deploy the application code.
    - **AWS Responsibility**: Manage the runtime, servers, scaling, and infrastructure.
    - **Example**: **AWS Lambda**.
    - **Use Case**: Event-driven applications or serverless solutions.

---

 **Comparison of Models**

|**Model**|**Control**|**Ease of Use**|**Examples**|
|---|---|---|---|
|**IaaS**|Maximum control|Least ease of use|Amazon EC2, Lightsail|
|**PaaS**|Moderate control|Moderate ease of use|AWS Elastic Beanstalk|
|**SaaS**|Minimal control|Maximum ease of use|Amazon WorkSpaces, Chime|
|**FaaS**|Limited to application logic|High ease of use|AWS Lambda, Azure Functions|

---


![[Screenshot (154).png]]


### **Shared Responsibility Model for Architecture in AWS**

 **Definition**

In the **Shared Responsibility Model**, AWS and customers share the duties for designing and implementing a secure and scalable architecture. AWS is responsible for the **foundation** of the cloud infrastructure, while customers are responsible for **how they design and configure** their architecture within the cloud.

---

 **Key Responsibilities**

| **Responsibility Area**   | **AWS Responsibility**                                                                 | **Customer Responsibility**                                                                             |
| ------------------------- | -------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| **Global Infrastructure** | Ensuring availability, scalability, and reliability of infrastructure.                 | Choosing AWS Regions, Availability Zones, and services to meet performance and compliance requirements. |
| **Security of the Cloud** | Protecting the physical infrastructure, hardware, and managed services.                | Securing applications, configuring Identity and Access Management (IAM), and managing encryption keys.  |
| **Networking**            | Providing secure networking, such as **VPC**, **Direct Connect**, and DDoS protection. | Designing VPCs, setting up subnets, security groups, and routing rules.                                 |
| **Compute Resources**     | Managing the physical hosts and virtualization layers.                                 | Right-sizing compute instances and implementing autoscaling.                                            |
| **Data Protection**       | Providing options like **KMS**, S3 encryption, and snapshots.                          | Encrypting sensitive data, setting permissions, and configuring backups.                                |
| **Disaster Recovery**     | Offering global infrastructure for redundancy and failover.                            | Designing for fault tolerance, implementing multi-AZ or multi-region architecture.                      |

---

 **Examples of Shared Responsibilities**

1. **Scalability**:
    
    - **AWS**: Provides tools like **Elastic Load Balancer (ELB)** and **Auto Scaling**.
    - **Customer**: Designs architecture to use these tools effectively.
2. **Fault Tolerance**:
    
    - **AWS**: Guarantees data center redundancy and high availability in regions.
    - **Customer**: Configures failover systems, multi-region replication, and backups.
3. **Application Security**:
    
    - **AWS**: Provides security features like **AWS Shield** and **WAF**.
    - **Customer**: Configures firewalls, security groups, and application-level permissions.
4. **Data Residency**:
    
    - **AWS**: Provides control over data residency with regions and zones.
    - **Customer**: Selects appropriate regions and ensures compliance with local laws.

---

 **Benefits of Shared Responsibility for Architecture**

- **Flexibility**: Customers have full control to design architectures tailored to their needs.
- **Security Assurance**: AWS provides a secure foundation, allowing customers to focus on application-specific security.
- **Resilience**: Leveraging AWS's infrastructure ensures scalability, fault tolerance, and disaster recovery options.

---
	
 **Key AWS Services for Architecture**

- **Compute**: EC2, Lambda, Auto Scaling.
- **Networking**: VPC, Route 53, Direct Connect.
- **Storage**: S3, EBS, Glacier.
- **Security**: IAM, CloudTrail, AWS Shield.

---
