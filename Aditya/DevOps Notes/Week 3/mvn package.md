
## 📦 What is mvn package?

mvn package is a Maven command that:

👉 Compiles your source code  
👉 Runs tests  
👉 Packages the code into a deliverable like a `.jar` or `.war` file

> 💡 Think of mvn package as “bundle everything into a box ready for shipping.”

---

## ⚙️ What Happens When You Run mvn package?

Maven executes the following phases in order:

```
validate → compile → test → package
```

It does all of these in one go:

1. Validates your project structure (pom.xml)
    
2. Compiles Java files from src/main/java
    
3. Runs tests in src/test/java
    
4. Packages your app into a `.jar` or `.war` file (based on pom.xml configuration)
    

📁 Output is saved in the target/ directory, e.g.:

```
target/
├── myapp-1.0.jar
```

---

## ✅ Basic Usage

```bash
mvn package
```

- Compiles code
    
- Runs unit tests
    
- Creates a .jar or .war file inside target/
    

---

## 📦 Packaging Type

The output format depends on your project packaging type in pom.xml:

```xml
<packaging>jar</packaging>  <!-- or war -->
```

|Packaging Type|Output Example|
|---|---|
|jar|target/myapp-1.0.jar|
|war|target/myapp-1.0.war|

---

## 🧪 Example 1: Basic package

```bash
mvn package
```

- Runs full build cycle up to the “package” phase
    
- Generates the output artifact in target/
    
- Useful before deployment or sharing the app
    

---

## 🧪 Example 2: Package without running tests

```bash
mvn package -DskipTests
```

- Compiles and packages the code
    
- Skips test execution
    
- Faster, used when you're confident the code is working or just want to test the build
    

---

## 🧪 Example 3: Clean and package

```bash
mvn clean package
```

- Deletes the old target/ directory
    
- Starts from a clean slate
    
- Builds and packages a fresh artifact
    

---

## 🧪 Example 4: Package using a specific profile

```bash
mvn package -Pproduction
```

- Uses the profile named production (from pom.xml)
    
- Builds the app with environment-specific configs (e.g., DB, logging, endpoints)
    

---

## 🧪 Example 5: Package and show debug logs

```bash
mvn -X package
```

- Shows detailed logs of the build process
    
- Helps debug dependency or build errors
    

---

## 📂 What Goes into the Target Directory?

After mvn package, you’ll typically find:

- .jar / .war file (your final app)
    
- Compiled class files
    
- Logs (e.g. surefire-reports)
    
- Temporary build files
    

---

## 🔄 Common DevOps Use Cases

|Use Case|Command|
|---|---|
|Build app for deployment|mvn clean package|
|Skip tests for faster build|mvn clean package -DskipTests|
|Use profile-based packaging|mvn clean package -Pprod|
|Use in Docker build|RUN mvn clean package|
|Package with debug logs|mvn -X clean package|

---

## 🤖 Example in Jenkins Pipeline

```groovy
stage('Build') {
  steps {
    sh 'mvn clean package -DskipTests'
  }
}
```

- Common in CI/CD pipelines
    
- Skips tests to reduce build time
    
- Artifact can be stored or deployed after this stage
    

---

## 🧠 Tips for DevOps Engineers

- Use mvn clean package in your CI/CD pipelines for reliable builds.
    
- Skip tests only when tests are flaky or handled in a separate step.
    
- Always validate your final .jar/.war before deploying.
    
- Use profiles to create different builds for different environments (dev, qa, prod).
    

---

## ❗ What mvn package Does NOT Do

- ❌ Does NOT install the artifact into your local repository (use mvn install for that)
    
- ❌ Does NOT deploy to remote servers or repos (use mvn deploy)
    
- ❌ Does NOT clean old files unless you use mvn clean package
    

---

## 📌 Summary Table

|Command|Description|
|---|---|
|mvn package|Compile, test, and package your app|
|mvn clean package|Clean old builds and then package|
|mvn package -DskipTests|Package app but skip running tests|
|mvn package -Pdev|Package using a custom Maven profile|
|mvn -X package|Package with debug logging|

---

Would you like a visual flowchart or PDF for Maven lifecycle and commands like compile, package, install, deploy?