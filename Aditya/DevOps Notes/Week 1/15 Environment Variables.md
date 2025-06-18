As a DevOps engineer, understanding **environment variables in Linux** is **very important** because they help control the behavior of processes and are widely used in **scripts, Dockerfiles, CI/CD pipelines, and configuration management tools**.

Let’s break everything down simply, with **syntax, examples, and use cases**.

---

## 🧠 What Are Environment Variables?

Environment variables are **key-value pairs** stored in the shell environment. They are used by the **system and applications** to get configuration settings.

For example:

```bash
export NAME="Alice"
```

Here, `NAME` is the environment variable and `"Alice"` is its value.

---

## 🔧 Common Use Cases in DevOps

1. **Store configuration settings** (e.g., database credentials, ports).
    
2. **Control tool behavior** (e.g., `PATH`, `HOME`, `USER`, etc.).
    
3. **Set environment context** (e.g., `DEV`, `STAGING`, `PROD`).
    
4. **Pass variables to scripts or Docker containers.**
    

---

## 🛠️ Basic Commands & Syntax

### ✅ 1. View All Environment Variables

```bash
printenv
```

or

```bash
env
```

Example:

```bash
$ env
HOME=/home/user
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
USER=user
```

---

### ✅ 2. View a Specific Variable

```bash
echo $VARIABLE_NAME
```

Example:

```bash
echo $HOME
# /home/user
```

---

### ✅ 3. Set an Environment Variable (Temporary)

```bash
export VAR_NAME="value"
```

Example:

```bash
export APP_ENV="production"
```

➡️ This is temporary and works only for the current terminal session.

---

### ✅ 4. Make It Permanent

To make environment variables permanent, add them to:

#### a) `~/.bashrc` or `~/.bash_profile` (for bash users)

#### b) `~/.zshrc` (for zsh users)

Example:

```bash
echo 'export APP_ENV="production"' >> ~/.bashrc
source ~/.bashrc
```

---

### ✅ 5. Unset (Delete) a Variable

```bash
unset VAR_NAME
```

Example:

```bash
unset APP_ENV
```

---

### ✅ 6. Local vs Exported Variables

```bash
VAR1="hello"       # local to shell
export VAR2="hi"   # exported to child processes
```

Only exported variables are passed to subprocesses or scripts.

---

## 🧪 Use in Scripts

```bash
#!/bin/bash
echo "Environment is $APP_ENV"
```

Run with exported variable:

```bash
export APP_ENV=production
./myscript.sh
```

---

## 🐳 Use in Docker

```bash
docker run -e APP_ENV=production myapp
```

Or load from `.env` file:

```env
# .env
DB_HOST=localhost
DB_PORT=3306
```

```bash
docker run --env-file .env myapp
```

---

## 📁 Use in CI/CD (e.g., GitHub Actions)

```yaml
jobs:
  deploy:
    runs-on: ubuntu-latest
    env:
      ENVIRONMENT: production
    steps:
      - name: Show Environment
        run: echo "Deploying to $ENVIRONMENT"
```

---

## 📌 Some Useful Built-in Environment Variables

|Variable|Meaning|
|---|---|
|`$HOME`|Home directory|
|`$USER`|Username|
|`$PATH`|Directories to search executables|
|`$PWD`|Present working directory|
|`$SHELL`|Current shell|
|`$HOSTNAME`|Hostname of machine|

---

## 💡 Tips

- Always quote the value: `export NAME="value"` to avoid issues with spaces.
    
- Use `set` to see shell variables and functions (not just environment vars).
    
- Use `.env` files in your projects to manage settings per environment.
    
- Don’t put sensitive values directly in scripts—use environment variables.
    

---

## 📚 Summary Cheat Sheet

```bash
# View all
printenv
env

# View one
echo $VAR_NAME

# Set (temporary)
export VAR_NAME="value"

# Set (permanent)
echo 'export VAR_NAME="value"' >> ~/.bashrc
source ~/.bashrc

# Delete
unset VAR_NAME

# Use in script
#!/bin/bash
echo "Value: $VAR_NAME"

# Pass to Docker
docker run -e VAR_NAME=value image

# Load from .env
docker run --env-file .env image
```

---

---

## ✅ 1. **Add Custom Commands (Scripts/Programs) to Your PATH**

### 🔹 Step-by-step example:

Let’s say you created a custom shell script called `hello.sh`.

```bash
#!/bin/bash
echo "Hello from DevOps script!"
```

### 🔹 Step 1: Make it executable

```bash
chmod +x hello.sh
```

### 🔹 Step 2: Move it to a directory in your PATH

Common choices:

- `/usr/local/bin` (for system-wide use)
    
- `$HOME/bin` (for user-specific use)
    

```bash
mv hello.sh /usr/local/bin/hello
```

Now you can run it like this:

```bash
hello
# Output: Hello from DevOps script!
```

If you don’t have permission for `/usr/local/bin`, use your own folder:

```bash
mkdir -p $HOME/bin
mv hello.sh $HOME/bin/hello
chmod +x $HOME/bin/hello
```

### 🔹 Step 3: Add `$HOME/bin` to PATH (if not already)

```bash
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
source ~/.bashrc
```

Now `hello` will work in any terminal session.

---

## ✅ 2. **Create Custom Commands Using Aliases**

Aliases are shortcuts for long commands.

### Example:

```bash
alias gs='git status'
```

Now `gs` runs `git status`.

To make it permanent:

```bash
echo 'alias gs="git status"' >> ~/.bashrc
source ~/.bashrc
```

---

## ✅ 3. **Create a Custom Command Folder for Your Tools**

This is useful if you make lots of small scripts.

```bash
mkdir -p $HOME/devops-tools
echo 'export PATH="$HOME/devops-tools:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

Now put any script in that folder, make it executable, and you can run it as a command.

---

## 🔁 Recap

|Task|Command|
|---|---|
|Make script executable|`chmod +x script.sh`|
|Move to system path|`mv script.sh /usr/local/bin/commandname`|
|Add custom folder to PATH|`export PATH="$PATH:/custom/folder"`|
|Create alias|`alias short="longcommand"`|

---

## ✅ Bonus Tip: Use `which` or `type` to Check Command Location

```bash
which hello
# /usr/local/bin/hello

type gs
# gs is aliased to `git status`
```

---

Want an example where we write a real custom tool, like a script to monitor disk usage or check uptime?