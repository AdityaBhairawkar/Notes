### Environment Variable

An **environment variable** is a key-value pair used by the operating system and applications to configure settings and behavior dynamically. These variables are stored in the system's environment and can influence how processes run.

**Key Points:**

- **Key-Value Format**: Environment variables are usually defined as `KEY=VALUE`.
    
- **System-wide or User-specific**: They can be set globally for all users or locally for a specific session or user.
    
- **Temporary or Persistent**: They can be set for the duration of a terminal session or permanently via configuration files (like `.bashrc`, `.zshrc`, `.env`, or system configuration files).
    

### Examples:

#### On Linux/macOS:

```bash
export PATH="/usr/local/bin:$PATH"
export NODE_ENV="production"
```

#### On Windows (Command Prompt):

```cmd
set PATH=C:\Program Files\Java\jdk\bin;%PATH%
set NODE_ENV=production
```

### Common Use Cases:

- Setting the path to executables (`PATH`)
    
- Defining runtime environments (e.g., `NODE_ENV=production`)
    
- Configuring application secrets (e.g., API keys)
    
- Customizing application behavior without changing the code
    

### In Programming:

Languages like Python, JavaScript, etc., can access environment variables:

```python
import os
api_key = os.getenv("API_KEY")
```

### 1) **OS Stores Information About the Environment**

The **operating system (OS)** maintains a set of **environment variables** that store information about the system environment and configuration. These variables provide essential data that programs and scripts use to determine how they should run.

#### Examples of What the OS Stores:

- **System paths** (e.g., `PATH`): Directories the OS searches for executables.
    
- **User information** (e.g., `USER`, `HOME`, `USERNAME`)
    
- **Session and shell configuration** (e.g., `SHELL`, `TERM`)
    
- **Localization settings** (e.g., `LANG`, `LC_ALL`)
    
- **Temporary directories** (e.g., `TMPDIR`, `TEMP`)
    
- **Operating mode or environment** (e.g., `NODE_ENV`, `ENV`)
    

#### Why It's Useful:

- Programs don't need hardcoded values.
    
- Developers and sysadmins can change behavior without modifying code.
    
- Secure way to handle sensitive information like API keys or credentials.
    

#### How You Can View Environment Variables:

- **Linux/macOS**: `printenv` or `env`
    
- **Windows (CMD)**: `set`
    

Example (Linux/macOS):

```bash
echo $HOME
```

Example (Windows):

```cmd
echo %USERNAME%
```

### 2) **Create Our Own Environment Variables**

You can define your own environment variables to store custom values (like API keys, file paths, or configuration settings) that your applications or scripts can use.

---

#### **On Linux/macOS:**

##### ➤ Temporarily (only for the current terminal session):

```bash
export MY_VAR="Hello World"
echo $MY_VAR   # Output: Hello World
```

##### ➤ Permanently (available in all terminal sessions):

Add the variable to your shell’s configuration file, such as `~/.bashrc`, `~/.zshrc`, or `~/.bash_profile`.

```bash
# Add this line to ~/.bashrc or ~/.zshrc
export MY_VAR="Hello World"
```

Then apply the change:

```bash
source ~/.bashrc   # or source ~/.zshrc
```

---


####  Use in Code:

##### Example in Python:

```python
import os
my_var = os.getenv("MY_VAR")
print(my_var)
```

##### Example in Bash script:

```bash
#!/bin/bash
echo "The value is: $MY_VAR"
```

### What is PATH?

`PATH` is a **special environment variable** in an operating system that tells the **shell or command-line interface** where to look for executable programs when you type a command.

---

### **Key Concept**:

When you run a command like `python` or `git`, the OS doesn't automatically know where those programs are installed. The `PATH` variable contains a **list of directories** to search, in order, for executable files.

---

### Think of it Like This:

- You type `node`
    
- The shell searches each directory listed in `PATH`
    
- It runs the first `node` executable it finds
    

---

### Example:

#### On Linux/macOS:

```bash
echo $PATH
```

#### On Windows (CMD):

```cmd
echo %PATH%
```

#### Output (example on Linux):

```bash
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

Each directory is separated by `:` (on Windows, it's `;`).

---

###  How to Add to `PATH`:

#### Linux/macOS (temporarily):

```bash
export PATH="$PATH:/your/custom/directory"
```

To make it permanent, add the line above to `~/.bashrc` or `~/.zshrc`.

#### Windows:

1. Go to **System Properties** → **Environment Variables**
    
2. Under **System variables**, find `Path`, and click **Edit**
    
3. Add your new directory
    

---

###  Why It's Useful:

- Lets you run programs from anywhere without typing the full path
    
- Keeps your command line clean and efficient
    
- Essential for setting up tools like Python, Java, Node.js, etc.
    

Let me know if you'd like help editing your `PATH` variable or troubleshooting a command not being found.