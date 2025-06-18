### **Types of Storage Services in AWS**

AWS offers a variety of storage services designed to cater to different use cases, from file storage to database management and backup solutions. Below is an overview of the key storage services:

---

### **1. Object Storage**

#### **Amazon S3 (Simple Storage Service)**

- **Purpose**: Scalable object storage for data backup, archiving, and content storage.
- **Key Features**:
    - **Durability**: 99.999999999% durability.
    - **Storage Classes**: Different classes based on cost and access frequency (Standard, Intelligent-Tiering, Glacier, etc.).
    - **Versioning**: Support for versioning and lifecycle policies.
- **Use Case**: Backup, disaster recovery, big data analytics, and media storage.

---

### **2. Block Storage**

#### **Amazon EBS (Elastic Block Store)**

- **Purpose**: Persistent block storage for EC2 instances.
- **Key Features**:
    - Supports different volume types (General Purpose SSD, Provisioned IOPS SSD, Magnetic).
    - Snapshots for backups and disaster recovery.
    - Scalable performance and capacity.
- **Use Case**: Databases, file systems, and enterprise applications that require persistent storage.

---

### **3. File Storage**

#### **Amazon EFS (Elastic File System)**

- **Purpose**: Scalable file storage for use with AWS compute instances (EC2).
- **Key Features**:
    - NFS (Network File System) support for Linux workloads.
    - Automatically scales storage up and down as data grows or shrinks.
    - Shared access to files across multiple instances.
- **Use Case**: Web serving, content management, and big data applications that require shared file systems.

---

### **4. Archive Storage**

#### **Amazon Glacier and Glacier Deep Archive**

- **Purpose**: Low-cost archival storage for infrequently accessed data.
- **Key Features**:
    - **Glacier**: Retrieval times ranging from minutes to hours.
    - **Glacier Deep Archive**: The lowest-cost storage option for data that is rarely accessed.
- **Use Case**: Long-term data archiving, backup, and compliance-related storage.

---

### **5. Hybrid Storage**

#### **AWS Storage Gateway**

- **Purpose**: Hybrid cloud storage service that connects on-premises environments with AWS cloud storage.
- **Key Features**:
    - Integration with Amazon S3, EBS, and Glacier.
    - Supports file, volume, and tape-based storage configurations.
- **Use Case**: Hybrid workloads, disaster recovery, and backup solutions.

---

### **6. Database Storage**

#### **Amazon RDS (Relational Database Service)**

- **Purpose**: Managed relational database service for various database engines (MySQL, PostgreSQL, Oracle, SQL Server, MariaDB).
- **Key Features**:
    - Automated backups, patch management, and scaling.
    - High availability with Multi-AZ deployments.
- **Use Case**: Enterprise applications requiring relational databases.

#### **Amazon DynamoDB**

- **Purpose**: Fully managed NoSQL database service.
- **Key Features**:
    - Low-latency performance at scale.
    - Integrated with AWS Lambda for serverless applications.
- **Use Case**: Applications requiring scalable NoSQL storage for high-velocity data.

#### **Amazon Aurora**

- **Purpose**: MySQL and PostgreSQL-compatible relational database with high performance and availability.
- **Key Features**:
    - Automated backups, replication, and failover.
    - Aurora Serverless for variable workloads.
- **Use Case**: Highly transactional applications requiring high availability and scalability.

---

### **7. Edge Storage**

#### **Amazon CloudFront (CDN)**

- **Purpose**: Content delivery network for fast distribution of static and dynamic content.
- **Key Features**:
    - Caching at edge locations to reduce latency.
    - Integration with S3 for content delivery.
- **Use Case**: Distributing websites, video streaming, and global application delivery.

---

### **8. Data Transfer and Migration Storage**

#### **AWS DataSync**

- **Purpose**: Automated data transfer service for moving data between on-premises storage and AWS.
- **Key Features**:
    - Scalable data transfer speeds (up to 10 times faster than traditional transfer methods).
    - Supports NFS, SMB, and Amazon S3.
- **Use Case**: Data migration, hybrid cloud storage, and backup.

---

### **9. Object Locking and Legal Holds**

#### **Amazon S3 Object Lock**

- **Purpose**: Compliance feature that prevents objects from being deleted or overwritten.
- **Key Features**:
    - **Retention Modes**: Governance Mode and Compliance Mode.
    - **Legal Hold**: Prevents object deletion for legal purposes.
- **Use Case**: Financial, healthcare, and legal sectors for regulatory data retention.

---

### **10. Local Storage**

#### **Amazon Instance Store**

- **Purpose**: Temporary block-level storage for EC2 instances.
- **Key Features**:
    - Locally attached to the EC2 host.
    - Data is lost when the instance is stopped or terminated.
- **Use Case**: Temporary storage for scratch data, caches, and buffers.

---
**Amazon FSx**
**Amazon FSx** is a feature rich and highly-performant file system. That can be used for Windows (SMB) or Linux (Lustre) FSX
**Amazon FSx for Window File Server** uses the SMB protocol and allows you to mount FSx to Windows servers FSX 
**Amazon FSx for Lustre** uses Linux's Lustre file system and allows you to mount FSx to Linux servers
 **Comparison Summary**:

| **Service**             | **Type**               | **Use Case**                                               |
| ----------------------- | ---------------------- | ---------------------------------------------------------- |
| **Amazon S3**           | Object Storage         | Backup, archiving, content storage, big data analysis.     |
| **Amazon EBS**          | Block Storage          | Databases, enterprise apps, file systems.                  |
| **Amazon EFS**          | File Storage           | Web serving, content management, shared file systems.      |
| **Amazon Glacier**      | Archive Storage        | Long-term data archiving, compliance storage.              |
| **AWS Storage Gateway** | Hybrid Storage         | Hybrid workloads, disaster recovery, backup solutions.     |
| **Amazon RDS**          | Database Storage       | Relational databases (MySQL, PostgreSQL, etc.).            |
| **Amazon DynamoDB**     | NoSQL Database Storage | High-velocity data, NoSQL applications.                    |
| **Amazon CloudFront**   | Edge Storage           | Content delivery, low-latency global application delivery. |
| **AWS DataSync**        | Data Transfer          | Large-scale data transfer, hybrid cloud integration.       |
| **S3 Object Lock**      | Compliance Storage     | Regulatory data retention for legal hold.                  |
| **Instance Store**      | Local Storage          | Temporary storage for EC2 instances.                       |

---
### **Introduction to S3**
**Amazon S3** is a scalable, high-speed, low-cost storage service designed for online backup and archiving of data, providing **object storage** with **99.999999999% durability**. It is widely used to store and retrieve any amount of data from anywhere on the web.

**What is Object Storage (Object-based Storage)?** 
Data storage architecture that manages data as objects, as opposed to other storage architectures: 
- file systems which manages data as a files and fire hierarchy, and 
- block storage which manages data as blocks within sectors and tracks.

S3 provides you with unlimited storage. You don't need to think about the underlying infrastructure The S3 Console provides an interface for you to upload and access your data

 **S3 Buckets and Objects**
- **Bucket**:
    
    - A container for storing objects. You can think of it like a folder for organizing data.
    - Buckets are globally unique, and their name must be unique across all of AWS.
- **Object**:
    
    - The fundamental data unit stored in S3, consisting of:
        - **Key**: A unique identifier for the object within a bucket.
        - **Value**: The data or content stored (e.g., a file).
        - **Metadata**: Optional data associated with the object (e.g., content-type, last-modified time).

**Storage Classes**:
AWS offers a range of S3 storage classes that trade Retrieval Time, Accessibility and Durability for Cheaper Storage

**S3 Standard (default)**
- Fast! 99.99% Availability, 11 9's Durability. Replicated across at least three AZs

**S3 Intelligent Tiering** 
- Uses ML to analyze object usage and determine the appropriate storage class. Data is moved to the most cost-effective access tier, without any performance impact or added overhead.

**S3 Standard-IA (Infrequent Access)** 
- Still Fast! Cheaper if you access files less than once a month. Additional retrieval fee is applied. 50% less than Standard (reduced availability) S3 One-Zone-IA Still Fast! Objects only exist in one AZ. Availability (is 99.5%). but cheaper than Standard IA by 20% less (Reduce durability) Data could get destroyed. A retrieval fee is applied. 

**S3 Glacier** 
- For long-term cold storage. Retrieval of data can take minutes to hours but the off is very cheap storage 

**S3 Glacier Deep Archive** 
- The lowest cost storage class. Data retrieval time is 12 hours.

### **AWS Snow Family**

The **AWS Snow Family** is a suite of physical devices and services designed to help customers move large amounts of data into and out of AWS. These services are especially useful when dealing with situations where transferring data over the internet is too slow or expensive.

The Snow Family includes several devices tailored to different use cases, ranging from edge computing to large-scale data transfer. The devices are rugged and portable, designed for environments with limited connectivity or where large-scale data migration is required.

---

 **1. AWS Snowcone**

- **Purpose**: Smallest member of the Snow Family, designed for edge computing and small-scale data transfer.
- **Key Features**:
    - **Weight**: 4.5 lbs (2.1 kg).
    - **Storage Capacity**: 8 TB of usable storage.
    - **Connectivity**: USB, 2x Gigabit Ethernet.
    - **Use Case**: Ideal for small remote environments or edge locations where data needs to be collected and processed locally before transferring to AWS.
- **Applications**:
    - IoT device data collection.
    - Remote branch offices with limited internet bandwidth.

---

 **2. AWS Snowball Edge**

- **Purpose**: A versatile edge computing device designed for data transfer and edge processing.
- **Key Features**:
    - **Weight**: 40 lbs (18 kg).
    - **Storage Capacity**: 80 TB (Storage Optimized version) or 42 TB (Compute Optimized version).
    - **Computing Power**: Can run EC2 instances, AWS Lambda functions, and has GPU support (on some models).
    - **Connectivity**: 10 Gigabit Ethernet, Wi-Fi, and optional 4G LTE connectivity.
    - **Local Compute**: Can process data locally before sending it to AWS, reducing the need for cloud resources during data ingestion.
- **Use Case**:
    - Large-scale data transfer (e.g., moving petabytes of data).
    - Edge computing (e.g., processing data locally in environments with intermittent connectivity).
    - Disaster recovery solutions with local data processing.
- **Applications**:
    - Media and entertainment workflows.
    - Edge computing in remote locations.
    - IoT data collection and analysis.

---

 **3. AWS Snowmobile**

- **Purpose**: The largest device in the Snow Family, designed for transferring massive amounts of data (exabytes).
- **Key Features**:
    - **Size**: A 45-foot shipping container.
    - **Storage Capacity**: Up to 100 PB of usable storage.
    - **Security**: Encrypted by default with end-to-end encryption during transit.
    - **Transportation**: Delivered via truck, with a physical security escort to ensure safe transportation.
- **Use Case**:
    - Large-scale data migrations, especially when transferring data that exceeds the capacity of internet connections (e.g., moving entire data centers or large-scale archives).
    - Useful when time and cost-effective transfers over the internet are not feasible.
- **Applications**:
    - Scientific data storage.
    - Media archives.
    - Data center migrations.

---

 **Common Use Cases for AWS Snow Family**

- **Data Center Migration**: Moving large datasets and entire data centers to AWS when bandwidth is insufficient or too costly.
- **Edge Computing**: Collecting and processing data at the edge, such as from IoT devices, and then sending the results to AWS for further processing.
- **Disaster Recovery**: Storing backups or maintaining continuity of operations during network outages or hardware failures.
- **Content Distribution**: Transferring media files, databases, and other large content for streaming and content distribution networks.

---

