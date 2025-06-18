
## ⚙️ What is mvn compile?

mvn compile is a Maven command that compiles your Java source code into bytecode (.class files) and places them into the target/classes directory.

> 💡 Think of mvn compile as “turning your Java code into something the JVM can actually run”.

---

## 🛠️ What Does It Do?

- Scans your project for all .java files in the src/main/java directory.
    
- Compiles them using Java Compiler (javac).
    
- Saves the compiled .class files in the target/classes folder.
    

📁 Directory structure before:

```
src/
└── main/
    └── java/
        └── App.java
```

📁 After mvn compile:

```
target/
└── classes/
    └── App.class
```

---

## ✅ Basic Usage

```bash
mvn compile
```

This command:

- Reads the pom.xml file
    
- Compiles all source code
    
- Does NOT run tests or package the app
    
- Creates a target/classes directory
    

---

## 🔁 How It Fits in the Build Lifecycle

Maven has predefined lifecycle phases:

```
validate → compile → test → package → verify → install → deploy
```

🧩 mvn compile is the 2nd phase. It only compiles the source code — nothing more.

---

## 🧪 Example 1: Basic compile

```bash
mvn compile
```

- Compiles Java code in src/main/java
    
- Generates .class files in target/classes
    

---

## 🧪 Example 2: Compile after cleaning old files

```bash
mvn clean compile
```

- Deletes target/ first (removes old .class files)
    
- Then compiles fresh code
    
- Useful to avoid leftover file issues
    

---

## 🧪 Example 3: Compile with a specific profile

```bash
mvn compile -Pdev
```

- Uses a Maven profile named dev (defined in pom.xml)
    
- Useful if different profiles set different source directories, versions, dependencies, etc.
    

---

## 🧪 Example 4: Compile and skip plugin executions

```bash
mvn compile -Dskip=true
```

- Compiles code
    
- Skips extra executions or bound plugins (if configured in your pom.xml)
    
- Not common unless you have heavy plugins
    

---

## 🧪 Example 5: Compile in verbose/debug mode

```bash
mvn -X compile
```

- Shows detailed debug logs of what's happening
    
- Useful for troubleshooting compiler or dependency issues
    

---

## 🧪 Example 6: Compile with custom Java version

```bash
mvn compile -Dmaven.compiler.source=11 -Dmaven.compiler.target=11
```

- Forces Maven to compile using Java 11
    
- Useful if you have multiple Java versions installed
    

---

## 🧪 Example 7: Compile with custom settings file

```bash
mvn compile -s custom-settings.xml
```

- Uses a custom Maven settings file (with different repositories, proxies, credentials, etc.)
    
- Common in enterprise builds or DevOps pipelines
    

---

## 📂 What Happens After mvn compile?

Maven generates:

- .class files in target/classes
    
- Optional log files
    
- The project is now ready for testing or packaging (next steps)
    

---

## 🔄 Common DevOps Use Cases

|Use Case|Command|
|---|---|
|Just compile source code|mvn compile|
|Clean build before compile|mvn clean compile|
|Compile with dev profile|mvn compile -Pdev|
|Compile with Java 17|mvn compile -Dmaven.compiler.source=17|
|Compile in Docker build|RUN mvn compile|

---

## 📦 Where It Fits in DevOps Pipelines

- Used in early pipeline stages (to check if code compiles)
    
- Helpful in linting or pre-testing stages
    
- Speeds up feedback loop: quickly catches compilation errors
    

Example in Jenkinsfile:

```groovy
stage('Compile') {
  steps {
    sh 'mvn clean compile'
  }
}
```

---

## 🧠 Tips for DevOps Engineers

- Use mvn compile early to catch issues before test/package stages.
    
- In pipelines, combine with mvn clean for clean builds.
    
- Use profiles to support multi-environment builds (dev, qa, prod).
    
- Use with Docker to reduce build steps:
    

```dockerfile
RUN mvn clean compile
```

---

## ❗ What mvn compile Does NOT Do

- ❌ Does NOT run tests
    
- ❌ Does NOT create JAR/WAR
    
- ❌ Does NOT install into local repo
    
- ❌ Does NOT deploy anything
    

It only compiles the code.

---

## 🔚 Summary

|Command|Action|
|---|---|
|mvn compile|Compiles source code into target/classes|
|mvn clean compile|Deletes old build & compiles fresh|
|mvn compile -Pprod|Compile using a specific profile|
|mvn compile -X|Debug mode for compile issues|
|mvn compile -Dskip=true|Skip extra plugin executions|

---

Would you like a visual cheat sheet (image or PDF) for Maven lifecycle or commands?