
### **Example: Basic Service YAML**

apiVersion: v1
kind: Service
metadata:
  name: my-service
spec:
  ports:
    - protocol: TCP
      port: 80
      targetPort: 8080
  type: ClusterIP

---

### **Breaking It Down:**

1. **`apiVersion: v1`**
    
    - Services use API version `v1`.
2. **`kind: Service`**
    
    - Specifies that this is a Kubernetes Service.
3. **`metadata`**
    
    - `name: my-service` → The name of the Service.
4. **`spec`** (Main configuration):
    
    - **`selector`** → Connects the Service to Pods with the label `app: my-app`.
    - **`ports`** → Defines the ports:
        - `port: 80` → The port exposed by the Service.
        - `targetPort: 8080` → The port on the Pod where the app is running.
        - `protocol: TCP` → The protocol used.
    - **`type: ClusterIP`** → The type of Service (default type, makes the service accessible only inside the cluster).


- ### **When Should You Use a Different Type?**

- **`NodePort`** → If you want external access via a port on the node.
- **`LoadBalancer`** → If you're using a cloud provider and need a public IP.
- **`ExternalName`** → If you need to map to an external domain.