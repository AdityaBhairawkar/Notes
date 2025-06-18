
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-deployment
  labels:
    app: my-app
spec:
  replicas: 3
  selector:
    matchLabels:
      app: my-app
  template:
    metadata:
      labels:
        app: my-app
    spec:
      containers:
        - name: my-container
          image: nginx
          ports:
            - containerPort: 80


## **Detailed Explanation of Each Field**

### 1. **`apiVersion`**

- This defines which version of the Kubernetes API you are using.
- Example: `apps/v1` (for Deployments)
- **What happens if you don’t write this?**
    - Kubernetes won’t know which API version to use and will throw an error.

### 2. **`kind`**

- Specifies the type of resource being created.
- Example: `Deployment`
- **What happens if you don’t write this?**
    - Kubernetes won’t know if this is a Deployment, Service, or another resource.

### 3. **`metadata`**

- Contains information about the Deployment.
- Example:
    
    `metadata:   
     name: my-deployment   
     labels:     
        app: my-app`
    
- **Why write it?**
    - Kubernetes needs a name to identify and manage this Deployment.
- **What happens if you don’t write it?**
    - Kubernetes cannot create or track this Deployment.

### 4. **`spec` (Specification of the Deployment)**

- Defines how the Deployment should behave.

#### **a. `replicas`**

- Specifies how many Pods should run.
- Example:

    `replicas: 3`
    
- **Why write it?**
    - Ensures high availability by running multiple instances.
- **What happens if you don’t write it?**
    - Kubernetes assumes 1 replica by default.

#### **b. `selector`**

- Defines which Pods belong to this Deployment.
- Example:
    
    `selector:   
      matchLabels:     
         app: my-app`
    
- **Why write it?**
    - Helps Kubernetes find and manage the correct Pods.
- **What happens if you don’t write it?**
    - The Deployment won’t know which Pods it should control.

#### **c. `template` (Pod Template)**

- Defines the Pods that will be created by the Deployment.

`template:   
    metadata:     
        labels:       
            app: my-app`

- **Why write it?**
    - This ensures that the created Pods have the correct labels.
- **What happens if you don’t write it?**
    - The Deployment won’t be able to create Pods.

#### **d. `containers`**

- Defines the containers inside each Pod.

`containers:   
    - name: my-container     
      image: nginx     
      ports:       
        - containerPort: 80`

- **Why write it?**
    - This tells Kubernetes which application to run inside the Pods.
- **What happens if you don’t write it?**
    - The Pods will be empty and useless.

---