
## **Breaking Down the Structure (Line by Line)**

`apiVersion: v1 
kind: ConfigMap 
metadata:   
    name: my-config 
data:   
    database_url: "mysql://db-user@mysql-service:3306/mydb"   
    redis_host: "redis-service"   
    log_level: "DEBUG"`

### **1. `apiVersion: v1`**

- Defines which version of the Kubernetes API we are using.
- `v1` means it's a core resource in Kubernetes.

### **2. `kind: ConfigMap`**

- Specifies the type of Kubernetes object being created.
- Here, it's a **ConfigMap**.

### **3. `metadata:`**

- Contains metadata like **name**, **labels**, and **annotations**.
- `name: my-config` → Assigns a unique name to the ConfigMap (`my-config` in this case).

### **4. `data:`**

- This section contains **key-value pairs** of configuration data.
- `database_url`, `redis_host`, and `log_level` are keys.
- Their respective values (`mysql://db-user@mysql-service:3306/mydb`, `redis-service`, `DEBUG`) are assigned.