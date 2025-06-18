
kubectl apply -f ingress.yaml
kubectl get ingress

==**Example: Simple Ingress YAML File**==

apiVersion: networking.k8s.io/v1                # Specifies the API version for Ingress
kind: Ingress                                                # Defines this as an Ingress resource
metadata:
  name: my-ingress                                    # The name of the Ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /        # (Optional) Used for URL rewrites
spec:
  ingressClassName: nginx            # Specifies that we're using the NGINX Ingress Controller
  rules:                                                  # List of routing rules for handling external requests
    - host: myapp.example.com           # The domain name for accessing the application
      http:
        paths:
          - path: /                                                      # URL path ("/" means the root URL)
            pathType: Prefix       # Specifies that URLs starting with "/" should be matched
            backend:
              service:
                name: my-service                                     # Name of the backend service
                port:
                  number: 80                         # The port on which the service is running
  tls:                                                                        # (Optional) Enables HTTPS
    - hosts:
        - myapp.example.com
      secretName: my-tls-secret         # Name of the TLS certificate stored as a Kubernetes secret


## ==**Detailed Explanation of Each Section**==

|**Section**|**Purpose**|
|---|---|
|`apiVersion: networking.k8s.io/v1`|Specifies the Kubernetes API version used for Ingress.|
|`kind: Ingress`|Defines this as an Ingress resource.|
|`metadata:`|Contains metadata like the Ingress name and annotations.|
|`annotations:`|(Optional) Used to modify the behavior of Ingress, like URL rewrites.|
|`spec:`|Contains the configuration for routing traffic.|
|`ingressClassName: nginx`|Defines that we are using the NGINX Ingress Controller.|
|`rules:`|Defines how external traffic is routed to internal services.|
|`host: myapp.example.com`|Defines the hostname that users will use to access the service.|
|`http:`|Defines HTTP traffic routing.|
|`paths:`|Specifies URL path routing rules.|
|`path: /`|Routes all requests to the root ("/") of the hostname.|
|`pathType: Prefix`|Ensures that paths starting with "/" match.|
|`backend:`|Specifies the service that will handle incoming requests.|
|`service:`|Defines the internal service that the request will be forwarded to.|
|`name: my-service`|Name of the service that will receive traffic.|
|`port: 80`|Port on which the service is running.|
|`tls:`|(Optional) Enables HTTPS with a TLS certificate.|
|`secretName: my-tls-secret`|The Kubernetes secret storing the TLS certificate.|