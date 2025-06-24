
## ✅ **1. Variables**

Variables are used to store data like numbers, strings, file paths, etc.

### ✅ Syntax:

```bash
VARIABLE_NAME=value
```

⚠️ **No spaces around `=`**

---

### ✅ Example:

```bash
NAME="Aditya"
AGE=25
```

### ✅ Using variables:

```bash
echo "My name is $NAME and I am $AGE years old."
```

### 🔥 Tips:

- By convention, **all-uppercase** variable names are used for environment or system variables, e.g., `PATH`, `HOME`.
    
- For **your own variables**, it's okay to use lowercase too: `name="john"`
    
- Use `{}` if you're combining variables with strings:
    
    ```bash
    FILE="log"
    echo "${FILE}_2025.txt"
    ```
    

---

## ✅ **14. Arithmetic Operations (`$(( ))`)**

Used to do math with integers. You can’t use `echo` or `let` alone for safe math—`$(( ))` is the best.

### ✅ Syntax:

```bash
result=$((expression))
```

---

### ✅ Example:

```bash
a=10
b=5

sum=$((a + b))
diff=$((a - b))
product=$((a * b))
quotient=$((a / b))

echo "Sum: $sum"
echo "Difference: $diff"
echo "Product: $product"
echo "Quotient: $quotient"
```

### 🔥 Tips:

- Only works with **integers**, not floating-point numbers.
    
- Use `bc` or `awk` for decimals.
    

---

## ✅ **7. String Manipulation**

Helps modify or extract parts of strings.

### ✅ Examples:

#### 1. **Length of a string**

```bash
str="DevOps"
echo "Length: ${#str}"
```

#### 2. **Substring**

```bash
str="cloudengineer"
echo "${str:0:5}"  # Output: cloud (start at 0, take 5 characters)
```

#### 3. **Replace part of string**

```bash
name="devopsengineer"
echo "${name/devops/cloud}"  # Output: cloudengineer
```

#### 4. **Remove part of string**

```bash
file="backup_2025.tar.gz"

echo "${file%.tar.gz}"  # Remove from end => backup_2025
echo "${file#backup_}"  # Remove from start => 2025.tar.gz
```

### 🔥 Tips:

- `${var#pattern}` removes shortest match from **start**.
    
- `${var%pattern}` removes shortest match from **end**.
    

---

## ✅ **8. Command Substitution**

Used to **run a command and store its output** into a variable or use it in a string.

### ✅ Syntax:

```bash
output=$(command)
# or
output=`command`  # (older style)
```

---

### ✅ Example:

```bash
DATE=$(date)
echo "Today is $DATE"

FILES=$(ls)
echo "Files in directory: $FILES"
```

### 🔥 Tips:

- Always use `$(...)` instead of backticks `` `...` `` — it's cleaner and supports nesting.
    

---

## ✅ **9. Reading User Input**

Used to take input from the user during script execution.

### ✅ Syntax:

```bash
read variable_name
```

---

### ✅ Example:

```bash
echo "Enter your name:"
read name
echo "Hello, $name!"
```

### ✅ With a prompt in one line:

```bash
read -p "Enter your city: " city
echo "You live in $city"
```

---

### ✅ Read multiple values:

```bash
read -p "Enter first and last name: " first last
echo "First: $first, Last: $last"
```

### 🔥 Tips:

- Use `-s` to hide input (like passwords):
    
    ```bash
    read -s -p "Enter password: " pass
    ```
    

---

## ✅ Summary Table

|Topic|Syntax Example|Key Notes|
|---|---|---|
|Variables|`name="Aditya"`|No spaces, use `$name` to access|
|Arithmetic|`sum=$((a + b))`|Only for integers|
|String Manipulation|`${str:0:5}` or `${str/file/replace}`|Extract, replace, or remove parts|
|Command Substitution|`today=$(date)`|Use `$(...)` not backticks|
|Reading Input|`read name` or `read -p "Msg" var`|Use `-p` for inline prompts, `-s` for hidden|

---

Would you like practice exercises for these?