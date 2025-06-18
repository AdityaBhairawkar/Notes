
apiVersion: v1
kind: Secret
metadata:
  name: my-secret                           # Name of the Secret
type: Opaque                                 # Default type for general use
data:
  username: dXNlcm5hbWU=        # Base64 encoded value of "username"
  password: cGFzc3dvcmQ=          # Base64 encoded value of "password"

## **Explanation of Each Section in Detail**

|Section|Explanation|
|---|---|
|`apiVersion: v1`|Specifies that we are using the API version `v1`, required for Secret resources.|
|`kind: Secret`|Tells Kubernetes that we are creating a Secret.|
|`metadata:`|Contains metadata (e.g., name) for identifying the Secret.|
|`name: my-secret`|The name of the Secret, which will be referenced in the pod configuration.|
|`type: Opaque`|The most commonly used Secret type, used for generic key-value data.|
|`data:`|Holds key-value pairs of sensitive data, which must be **Base64 encoded**.|
|`username: dXNlcm5hbWU=`|The **Base64 encoded** version of `"username"`.|
|`password: cGFzc3dvcmQ=`|The **Base64 encoded** version of `"password"`.|