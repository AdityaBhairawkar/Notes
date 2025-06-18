##  What is Linux?

**Linux** is an open-source, Unix-like operating system. It’s widely used in servers, desktops, mobile devices (like Android), and embedded systems.

- **Kernel**: The core part of Linux, managing hardware and system processes.
    
- **Distributions**: Different flavors of Linux, e.g., Ubuntu, CentOS, Fedora, Arch, etc.
    

---

##  What is the Shell?

The **shell** is a program that takes commands from the user and tells the operating system to perform them. The most common shell is **Bash** (Bourne Again Shell).

### 1. **Bourne Shell (`sh`)**

- Created by Stephen Bourne in 1979
    
- The original Unix shell
    
- Lightweight and portable
    
- Lacks modern scripting features
    
- Script extension: `.sh`
    

**Use case:** Simple scripts, legacy systems

---

### 2. **Bash (Bourne Again SHell)**

- Most popular shell used in Linux today
    
- Default on systems like Ubuntu, Debian
    
- Backward compatible with `sh` but includes many improvements
    
- Features: command history, tab completion, arrays, arithmetic, etc.
    
- Script extension: `.sh` (though often written specifically for bash)
    

**Use case:** General scripting, system administration, automation

---

### 3. **Z Shell (`zsh`)**

- Advanced version of bash
    
- Includes improvements like better tab completion, globbing, spell correction
    
- Highly customizable (commonly used with frameworks like "Oh My Zsh")
    
- Default shell on macOS since Catalina
    

**Use case:** Developers and power users who want flexibility and enhanced usability

---

### 4. **Korn Shell (`ksh`)**

- Developed by David Korn at AT&T
    
- Compatible with `sh`, includes performance and scripting enhancements
    
- Often used in enterprise Unix environments
    

**Use case:** Performance-focused scripting, corporate or legacy Unix systems

---

### 5. **C Shell (`csh`)**

- Syntax resembles the C programming language
    
- Introduced early features like command history and job control
    
- Not ideal for scripting due to inconsistent behavior
    

**Use case:** Interactive use by users familiar with C; not recommended for scripts

---

### 6. **Tcsh**

- An enhanced version of `csh`
    
- Adds features like filename completion, command-line editing
    
- Better interactive usability than plain `csh`
    

**Use case:** Improved C Shell for interactive users

---

### 7. **Fish (Friendly Interactive SHell)**

- Designed to be user-friendly and modern
    
- Supports syntax highlighting, auto-suggestions, and cleaner syntax
    
- Not POSIX-compliant, so not suitable for all scripting scenarios
    

**Use case:** Beginners or users looking for a modern, interactive shell

---

|Shell|Modern Features|Scripting Quality|Interactive Use|POSIX-Compliant|Commonly Used In|
|---|---|---|---|---|---|
|sh|No|Good|Limited|Yes|Legacy systems|
|bash|Yes|Excellent|Good|Yes|Most Linux distributions|
|zsh|Excellent|Excellent|Excellent|Mostly|macOS, power users|
|ksh|Yes|Excellent|Good|Yes|Enterprise Unix|
|csh|No|Poor|Moderate|No|BSD (historical use)|
|tcsh|Moderate|Poor|Good|No|BSD, C shell fans|
|fish|Excellent|Moderate|Excellent|No|Modern desktop users|

---

### How to Check Your Current Shell

```bash
echo $SHELL
```

### How to Change Your Shell

```bash
chsh -s /bin/zsh  # Replace with your preferred shell path
```

---
## **What is a Shell Script?**

**Shell scripting** is the process of writing a series of commands in a plain text file to be executed by a Unix/Linux shell. It's a way to **automate repetitive tasks**, manage system operations, and simplify complex procedures.
A **shell script** is a text file containing a sequence of shell commands. These scripts can be executed just like programs.

Example (`hello.sh`):

```bash
#!/bin/bash
echo "Hello, World!"
```

The first line (`#!/bin/bash`) is called a **shebang**. It tells the system which shell to use to run the script.

---

## **How to Write and Run a Shell Script**

### Step 1: Create the script file

```bash
nano script.sh
```

### Step 2: Add your script code

```bash
#!/bin/bash
echo "This is a shell script"
```

### Step 3: Make it executable

```bash
chmod +x script.sh
```

### Step 4: Run the script

```bash
./script.sh
/path/script.sh
bash script.sh
```

---
### **Comments in Shell Scripting **

#### **Single-line Comment**

Use `#` at the beginning of the line:

```bash
# This is a single-line comment
echo "Hello"
```

#### **Multi-line Comment**

There is **no native multi-line comment syntax**, but you can use `:` with a **here-document** trick:

```bash
: <<'END'
This is a
multi-line comment
in shell script
END
```

Or use multiple `#` lines:

```bash
# Line 1
# Line 2
# Line 3
```

---
### **Variables in Shell Scripting**

In shell scripting, **variables** store data that can be used and reused throughout the script. You can assign strings, numbers, command outputs, and more.

---

###  1. **Creating and Using Variables**

#### Syntax:

```bash
variable_name=value
```

> ❗ No spaces around the `=`

#### Example:

```bash
name="Alice"
echo "Hello, $name"
```

---

###  2. **Using Command Output as Variable (Command Substitution)**

#### Syntax:

```bash
variable=$(command)
```

#### Example:

```bash
date_today=$(date)
echo "Today's date is: $date_today"
```

---

###  3. **Reading Input from User**

#### Syntax:

```bash
read variable
```

#### Example:

```bash
echo "Enter your name:"
read username
echo "Welcome, $username"
```

---

###  4. **Using Variables in Arithmetic Operations**

Use `let`, `expr`, or `(( ))` for arithmetic.

#### Example with `let`:

```bash
let sum=5+3
echo $sum
```

#### Example with `(( ))`:

```bash
a=10
b=20
((result=a+b))
echo "Result: $result"
```

---

###  5. **Environment Variables**

These are global variables available to all processes.

#### Example:

```bash
echo $HOME
echo $USER
```

#### Export your own:

```bash
myvar="test"
export myvar
```

---

###  6. **Default Value if Variable is Empty**

#### Syntax:

```bash
${variable:-default}
```

#### Example:

```bash
echo "Username: ${user:-Guest}"
```

---

###  7. **printf**
More powerful and precise than `echo`, useful for formatting output.
#### Example:

```bash
printf "format_string" [arguments]
```

---

###  8. **Unset and Check Variables**

#### Unset a variable:

```bash
unset myvar
```

#### Check if set:

```bash
if [ -z "$myvar" ]; then
  echo "Variable is empty"
fi
```

---

###  9. **Read-only Variables**

#### Example:

```bash
readonly pi=3.14
pi=3    # This will cause an error
```

---

###  10. **Positional Parameters (Script Arguments)**

```bash
#!/bin/bash
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
```

Run with:

```bash
./script.sh hello world
```

---

# Conditional Statements in Shell Scripting

---

## 1. **`if` Statement**

Basic syntax:

```bash
if [ condition ]; then
  # commands if condition is true
fi
```

### Example:

```bash
if [ -f "file.txt" ]; then
  echo "file.txt exists"
fi
```

---

## 2. **`if-else` Statement**

Syntax:

```bash
if [ condition ]; then
  # if true
else
  # if false
fi
```

### Example:

```bash
if [ -d "/tmp" ]; then
  echo "/tmp is a directory"
else
  echo "/tmp not found"
fi
```

---

## 3. **`if-elif-else` Statement**

Syntax:

```bash
if [ condition1 ]; then
  # commands if condition1 true
elif [ condition2 ]; then
  # commands if condition2 true
else
  # commands if none true
fi
```

### Example:

```bash
if [ $age -lt 13 ]; then
  echo "Child"
elif [ $age -lt 20 ]; then
  echo "Teenager"
else
  echo "Adult"
fi
```

---

## 4. **Test Conditions**

Use `[ ]` or `[[ ]]` (bash only) to test conditions.

### Common Tests:

|Test|Description|Example|
|---|---|---|
|`-f file`|File exists and is regular file|`[ -f file.txt ]`|
|`-d dir`|Directory exists|`[ -d /tmp ]`|
|`-e file`|File or directory exists|`[ -e file_or_dir ]`|
|`-s file`|File exists and is not empty|`[ -s file.txt ]`|
|`string1 = string2`|Strings equal|`[ "$a" = "$b" ]`|
|`string1 != string2`|Strings not equal|`[ "$a" != "$b" ]`|
|`-z string`|String is empty|`[ -z "$var" ]`|
|`-n string`|String is not empty|`[ -n "$var" ]`|
|`num1 -eq num2`|Numbers equal|`[ $a -eq $b ]`|
|`num1 -ne num2`|Numbers not equal|`[ $a -ne $b ]`|
|`num1 -lt num2`|num1 less than num2|`[ $a -lt $b ]`|
|`num1 -le num2`|num1 less or equal|`[ $a -le $b ]`|
|`num1 -gt num2`|num1 greater than num2|`[ $a -gt $b ]`|
|`num1 -ge num2`|num1 greater or equal|`[ $a -ge $b ]`|

---

## 5. **Logical Operators**

- AND: `&&`
    
- OR: `||`
    
- NOT: `!`
    

Example combining conditions:

```bash
if [ -f file.txt ] && [ -s file.txt ]; then
  echo "File exists and is not empty"
fi
```

Or with `[[ ]]` (Bash extended test):

```bash
if [[ -f file.txt && -s file.txt ]]; then
  echo "File exists and is not empty"
fi
```

---

## 6. **Using `case` Statement**

Good for multiple pattern matching.

Syntax:

```bash
case "$variable" in
  pattern1)
    commands;;
  pattern2)
    commands;;
  *)
    default commands;;
esac
```

### Example:

```bash
read -p "Enter a fruit: " fruit
case "$fruit" in
  apple)
    echo "Apple pie!";;
  banana)
    echo "Banana smoothie!";;
  *)
    echo "Unknown fruit.";;
esac
```

---

## 7. **Ternary-like conditional (using `&&` and `||`)**

```bash
[ condition ] && echo "True" || echo "False"
```

Example:

```bash
[ -f file.txt ] && echo "Exists" || echo "Does not exist"
```

---

|Type|Syntax|Use Case|
|---|---|---|
|`if`|`if [ cond ]; then ... fi`|Single condition|
|`if-else`|`if [ cond ]; then ... else ... fi`|Two branches|
|`if-elif-else`|`if [ cond1 ]; then ... elif [ cond2 ]; ... else ... fi`|Multiple conditions|
|`case`|`case $var in pattern) commands ;; *) default ;; esac`|Pattern matching|

---
# Loops in Shell Scripting

---

## 1. **`for` Loop**

### Syntax (Classic):

```bash
for var in list
do
  commands
done
```

### Example:

```bash
for fruit in apple banana cherry
do
  echo "Fruit: $fruit"
done
```

---

### Syntax (C-style `for` loop in bash):

```bash
for (( i=0; i<5; i++ ))
do
  echo "Number $i"
done
```

---

## 2. **`while` Loop**

### Syntax:

```bash
while [ condition ]
do
  commands
done
```

### Example:

```bash
count=1
while [ $count -le 5 ]
do
  echo "Count is $count"
  ((count++))
done
```

---

## 3. **`until` Loop**

Runs until condition becomes true (opposite of `while`).

### Syntax:

```bash
until [ condition ]
do
  commands
done
```

### Example:

```bash
count=1
until [ $count -gt 5 ]
do
  echo "Count is $count"
  ((count++))
done
```

---

## 4. **Loop Control Statements**

- **`break`** — Exit the loop immediately
    
- **`continue`** — Skip current iteration, move to next
    

### Example with `break`:

```bash
for i in {1..10}
do
  if [ $i -eq 5 ]; then
    break
  fi
  echo $i
done
# Outputs 1 2 3 4
```

### Example with `continue`:

```bash
for i in {1..5}
do
  if [ $i -eq 3 ]; then
    continue
  fi
  echo $i
done
# Outputs 1 2 4 5 (skips 3)
```

---

## 5. **Reading Files Line-by-Line with `while`**

```bash
while IFS= read -r line
do
  echo "Line: $line"
done < filename.txt
```

---

## 6. **Infinite Loop**

```bash
while true
do
  echo "Press [CTRL+C] to stop..."
  sleep 1
done
```

---

## 7. **Looping Over Command Output**

```bash
for file in $(ls /etc/*.conf)
do
  echo "Config file: $file"
done
```

_Note:_ Using `$(...)` splits by spaces, so be cautious with filenames containing spaces.

Better (safer) way:

```bash
while IFS= read -r file
do
  echo "Config file: $file"
done < <(ls /etc/*.conf)
```

---



|Loop Type|Syntax|Use Case|
|---|---|---|
|`for var in list`|`for var in list; do ...; done`|Iterate over known list or array|
|C-style `for`|`for (( i=0; i<N; i++ )); do ...`|Classic numeric loops (bash only)|
|`while`|`while [ condition ]; do ... done`|Loop while condition is true|
|`until`|`until [ condition ]; do ... done`|Loop until condition becomes true|
|Infinite loop|`while true; do ... done`|Run indefinitely|

---


#  Shell Functions

Functions help you **reuse code**, organize scripts, and keep logic modular.

---

##  1. **Basic Function Syntax**

```bash
function_name() {
  commands
}
```

OR (alternative syntax, both are valid in bash):

```bash
function function_name {
  commands
}
```

### Example:

```bash
greet() {
  echo "Hello, World!"
}

greet  # Function call
```

---

##  2. **Function with Parameters**

Access parameters inside the function using `$1`, `$2`, etc.

```bash
greet_user() {
  echo "Hello, $1!"
}

greet_user "Alice"
```

- `$1`, `$2`, ... — positional arguments
    
- `$@` — all arguments as separate words
    
- `$#` — number of arguments
    

---

##  3. **Returning Values**

### Use `return` to send back a status code (0–255 only):

```bash
check_even() {
  if (( $1 % 2 == 0 )); then
    return 0
  else
    return 1
  fi
}

check_even 4
if [ $? -eq 0 ]; then
  echo "Even number"
else
  echo "Odd number"
fi
```

> 🔸 `return` is for status codes — not actual values. To "return" strings, use `echo`.

---

##  4. **Returning Strings from a Function**

Use `echo` and capture with command substitution `$(...)`.

```bash
get_date() {
  echo "$(date)"
}

today=$(get_date)
echo "Today's date is: $today"
```

---

##  5. **Local Variables**

Use `local` to keep variables within function scope (Bash-only).

```bash
calculate() {
  local result=$(( $1 + $2 ))
  echo $result
}

sum=$(calculate 5 3)
echo "Sum: $sum"
```

---

##  6. **Function with Conditional Logic**

```bash
check_file() {
  if [ -f "$1" ]; then
    echo "$1 exists."
  else
    echo "$1 does not exist."
  fi
}

check_file "/etc/passwd"
```

---

##  7. **Function with Loop**

```bash
print_numbers() {
  for i in {1..5}; do
    echo "Number: $i"
  done
}

print_numbers
```

---

##  8. **Function Calling Another Function**

```bash
say_hello() {
  echo "Hello"
}

say_goodbye() {
  echo "Goodbye"
}

greet_both() {
  say_hello
  say_goodbye
}

greet_both
```

---

##  9. **Passing Multiple Arguments**

```bash
list_args() {
  echo "You passed $# arguments:"
  for arg in "$@"; do
    echo "$arg"
  done
}

list_args one two three
```

---

##  10. **Function in a Script with Main Execution**

```bash
say_hi() {
  echo "Hi, $1"
}

main() {
  say_hi "User"
}

main  # Entry point of the script
```

---

|Feature|Syntax / Concept|
|---|---|
|Basic function|`function_name() { commands; }`|
|With arguments|`$1`, `$2`, `$@`, `$#`|
|Return exit status|`return 0`|
|Return string value|`echo result`, capture via `$(...)`|
|Local variables|`local var=value`|
|Function call|Just type the name|


---

#  Command-Line Arguments in Shell

Shell scripts can accept **arguments** passed when they are run.

Example:

```bash
./script.sh arg1 arg2
```

---

##  1. **Accessing Arguments**

|Expression|Meaning|
|---|---|
|`$0`|Script name|
|`$1`..`$9`|Positional arguments|
|`${10}`|10th and above positional args|
|`$@`|All arguments (as separate words)|
|`$*`|All arguments (as one string)|
|`$#`|Total number of arguments|

---

###  Example: Print All Arguments

```bash
#!/bin/bash

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "Total arguments: $#"

echo "All args using \$@:"
for arg in "$@"; do
  echo "$arg"
done

echo "All args using \$*:"
for arg in $*; do
  echo "$arg"
done
```

Run with:

```bash
./script.sh apple banana cherry
```

---

##  2. **Check If Enough Arguments Are Passed**

```bash
#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 <arg1> <arg2>"
  exit 1
fi

echo "Both arguments provided."
```

---

##  3. **Using Arguments in Functions**

```bash
sum() {
  echo $(( $1 + $2 ))
}

sum "$1" "$2"
```

---

##  4. **Accessing 10th+ Arguments**

Use curly braces:

```bash
echo "Tenth arg: ${10}"
```

---

##  5. **Using `shift` to Process All Arguments**

`shift` removes the first argument, moving the rest down.

```bash
#!/bin/bash

while [ $# -gt 0 ]; do
  echo "Argument: $1"
  shift
done
```

---

##  6. **Handling Flags (Basic Manual Parsing)**

```bash
#!/bin/bash

while [ "$1" != "" ]; do
  case $1 in
    -n | --name ) shift
                  name=$1
                  ;;
    -a | --age )  shift
                  age=$1
                  ;;
    * )           echo "Unknown option: $1"
                  exit 1
  esac
  shift
done

echo "Name: $name"
echo "Age: $age"
```

Run with:

```bash
./script.sh -n Alice -a 25
```

---

##  7. **Using `getopts` (For Standardized Flag Parsing)**

```bash
#!/bin/bash

while getopts ":n:a:" opt; do
  case $opt in
    n) name=$OPTARG ;;
    a) age=$OPTARG ;;
    \?) echo "Invalid option: -$OPTARG" ;;
  esac
done

echo "Name: $name"
echo "Age: $age"
```

Run with:

```bash
./script.sh -n Alice -a 30
```

---


| Feature                | Syntax / Variable     |
| ---------------------- | --------------------- |
| Script name            | `$0`                  |
| 1st, 2nd, nth argument | `$1`, `$2`, `${10}`   |
| Number of arguments    | `$#`                  |
| All arguments (quoted) | `"$@"`                |
| All arguments (string) | `"$*"`                |
| Shift arguments        | `shift`               |
| Handle flags manually  | `case $1 in ...)`     |
| Use `getopts`          | `getopts ":a:b:" opt` |

---

# Error Handling in Shell Scripting

Error handling ensures your script behaves predictably when something goes wrong — like a missing file, failed command, or invalid input.

---

##  1. **Check Exit Status with `$?`**

Every command returns an exit code:

- `0` → Success
    
- `>0` → Error
    

### Example:

```bash
cp file.txt /backup/
if [ $? -ne 0 ]; then
  echo "Error: Failed to copy file."
fi
```

---

##  2. **Using `exit` to Stop Script on Error**

```bash
if [ ! -f "important.txt" ]; then
  echo "Error: important.txt not found!"
  exit 1
fi
```

---

##  3. **`set -e` — Exit on Any Error**

Automatically exit the script if any command fails.

```bash
#!/bin/bash
set -e

echo "Step 1"
nonexistent_command  # Script will exit here
echo "Step 2"         # Will never be reached
```

---

##  4. **`set -o pipefail` — Detect Failure in Pipelines**

By default, only the last command in a pipeline affects `$?`. This option changes that.

```bash
set -o pipefail

grep "something" file.txt | sort > output.txt
```

If `grep` fails, the pipeline will return an error status.

---

##  5. **Using `trap` for Cleanup on Exit or Interrupt**

### Syntax:

```bash
trap 'command' SIGNAL
```

### Example:

```bash
cleanup() {
  echo "Cleaning up..."
  rm -f temp.txt
}

trap cleanup EXIT
trap "echo Interrupted!" SIGINT

touch temp.txt
echo "Running script..."
sleep 5
```

- `EXIT` — run command when script ends
    
- `SIGINT` — Ctrl+C
    
- `ERR` — error in command (with `set -e`)
    

---

##  6. **Custom Error Function**

```bash
error_exit() {
  echo "Error: $1"
  exit 1
}

[ -f "data.csv" ] || error_exit "data.csv is missing!"
```

---

##  7. **Log Errors to a File**

```bash
command 2>>error.log
```

- `2>` redirects stderr
    
- `>>` appends to file
    

---

##  8. **Check Command Availability**

```bash
command -v curl >/dev/null 2>&1 || {
  echo "curl not installed"; exit 1;
}
```

---


|Method|Use Case|
|---|---|
|`$?`|Check exit code of last command|
|`exit`|Stop script with custom code|
|`set -e`|Exit script if any command fails|
|`set -o pipefail`|Fail script on any part of a pipeline|
|`trap`|Clean up on exit or interrupt|
|`error_exit` function|Standard error messaging and exit|
|`2> /dev/null`|Suppress errors|
|`2>> error.log`|Save errors to a log file|



---

#  Debugging in Shell Scripting

Debugging helps you **find and fix bugs** in your shell scripts by tracing, logging, or inspecting values at runtime.

---

##  1. **Enable Debug Mode: `set -x`**

Shows each command before executing it — great for tracing.

```bash
#!/bin/bash
set -x  # Enable debug mode

name="Alice"
echo "Hello, $name"

set +x  # Disable debug mode
```

> 🔹 Use `set +x` to turn debugging off after the block you're checking.

---

##  2. **Dry Run: Echo Commands Instead of Executing**

Use `echo` to simulate what a script will do:

```bash
# Instead of this:
# rm *.log

# Do this during testing:
echo rm *.log
```

---

##  3. **Use `set -e` to Stop on First Error**

This helps you catch the exact point of failure:

```bash
set -e
cp file1.txt /somepath/
cp file2.txt /anotherpath/  # Stops here if the above fails
```

---

##  4. **Print Variable Values**

Use `echo` or `printf` to show internal state:

```bash
echo "DEBUG: Username is $username"
```

Use color or labels to make it stand out:

```bash
echo "[DEBUG] Path: $PATH"
```

---

##  5. **Use `trap` to Capture Failures**

Catch and log errors or cleanup on failure:

```bash
trap 'echo "Error at line $LINENO"' ERR
set -e  # Required to catch errors

cp missing_file.txt /tmp
```

---

##  6. **Run with `bash -x` or `sh -x`**

No need to edit the script. Run directly with:

```bash
bash -x script.sh arg1 arg2
```

Shows command execution trace as it runs.

---

##  7. **Use `PS4` for Better Trace Output**

Customize trace prefix for better logs:

```bash
#!/bin/bash
export PS4='+ ${BASH_SOURCE}:${LINENO}:${FUNCNAME[0]}: '
set -x
```

---

##  8. **Isolate Functions or Sections for Testing**

Run only parts of your script to debug specific blocks.

```bash
test_function() {
  echo "Testing math..."
  echo $((2 + 2))
}

test_function  # Run only this function
```

---

##  9. **Log Output to a File**

Capture stdout and stderr for later inspection:

```bash
./script.sh > debug.log 2>&1
```

---

##  10. **Use `shellcheck` (Static Analysis Tool)**

Find common errors, syntax issues, and bad practices:

```bash
shellcheck your_script.sh
```

Install on Linux:

```bash
sudo apt install shellcheck
```

---

|Technique|Description|
|---|---|
|`set -x`|Trace command execution|
|`set -e`|Exit on any error|
|`trap '...' ERR`|Catch errors and log them|
|`bash -x`|Run in debug mode without modifying script|
|`echo`/`printf`|Show variable values and flow|
|`shellcheck`|Analyze script for bugs and bad practices|
|`PS4`|Custom trace prefix for `set -x`|
|Redirect to log|`script.sh > log.txt 2>&1`|


---

#  Arrays and Associative Arrays in Bash

Bash supports two main types of arrays:

1. **Indexed Arrays** (standard lists)
    
2. **Associative Arrays** (like dictionaries, Bash 4.0+)
    

---

##  Indexed Arrays (Numerical Index)

###  1. **Declare and Initialize**

```bash
fruits=("apple" "banana" "cherry")
```

Or individually:

```bash
fruits[0]="apple"
fruits[1]="banana"
```

---

###  2. **Access Elements**

```bash
echo "${fruits[0]}"  # apple
```

---

###  3. **All Elements**

```bash
echo "${fruits[@]}"   # apple banana cherry
```

---

###  4. **Length of Array**

```bash
echo "${#fruits[@]}"  # 3
```

---

###  5. **Loop Through Array**

```bash
for fruit in "${fruits[@]}"; do
  echo "$fruit"
done
```

---

###  6. **Index Loop**

```bash
for i in "${!fruits[@]}"; do
  echo "Index $i: ${fruits[$i]}"
done
```

---

###  7. **Remove Element**

```bash
unset fruits[1]  # Removes "banana"
```

---

###  8. **Slice Array**

```bash
echo "${fruits[@]:1:2}"  # Get 2 elements starting from index 1
```

---

##  Associative Arrays (Key-Value)

>  Requires **Bash 4.0+**

###  1. **Declare**

```bash
declare -A capitals
```

---

###  2. **Initialize**

```bash
capitals["India"]="New Delhi"
capitals["USA"]="Washington"
capitals["Japan"]="Tokyo"
```

---

###  3. **Access Value by Key**

```bash
echo "${capitals["India"]}"  # New Delhi
```

---

###  4. **All Keys**

```bash
echo "${!capitals[@]}"  # India USA Japan
```

---

###  5. **All Values**

```bash
echo "${capitals[@]}"  # New Delhi Washington Tokyo
```

---

###  6. **Loop Through Keys and Values**

```bash
for country in "${!capitals[@]}"; do
  echo "$country - ${capitals[$country]}"
done
```

---

###  7. **Check if Key Exists**

```bash
if [[ -v capitals["India"] ]]; then
  echo "India exists"
fi
```

---

###  8. **Remove Entry**

```bash
unset capitals["USA"]
```

---

## 🧠 Summary Table

|Feature|Indexed Array|Associative Array|
|---|---|---|
|Declare|`fruits=()`|`declare -A map`|
|Assign|`fruits[0]="apple"`|`map["key"]="value"`|
|Access|`${fruits[0]}`|`${map["key"]}`|
|All elements|`"${fruits[@]}"`|`"${map[@]}"`|
|All keys|`"${!fruits[@]}"`|`"${!map[@]}"`|
|Length|`${#fruits[@]}`|`${#map[@]}`|
|Loop|`for i in "${fruits[@]}"`|`for k in "${!map[@]}"`|
|Remove|`unset fruits[1]`|`unset map["key"]`|

---
Here's a **complete guide to Text Processing Tools in Shell Scripting**, with examples covering every common and useful scenario.

---

#  Text Processing Tools in Shell

The most powerful tools for text processing are:

- `cat`
    
- `cut`
    
- `grep`
    
- `awk`
    
- `sed`
    
- `sort`
    
- `uniq`
    
- `tr`
    
- `wc`
    
- `head` / `tail`
    

---

##  1. `cat` – Concatenate and View Files

```bash
cat file.txt
cat file1.txt file2.txt > combined.txt
```

---

##  2. `cut` – Extract Columns/Fields

```bash
cut -d',' -f1 names.csv         # First column (CSV)
cut -c1-5 file.txt              # First 5 characters of each line
```

---

##  3. `grep` – Search for Text Patterns

```bash
grep "error" logfile.txt
grep -i "warning" logfile.txt   # Case-insensitive
grep -v "DEBUG" logfile.txt     # Exclude matches
grep -r "TODO" ./code/          # Recursive search
```

---

##  4. `wc` – Word, Line, and Character Count

```bash
wc file.txt                    # lines, words, bytes
wc -l file.txt                 # line count
wc -w file.txt                 # word count
wc -c file.txt                 # byte count
```

---

##  5. `awk` – Pattern-Action Language for Text

```bash
awk '{ print $1 }' file.txt              # Print 1st word of each line
awk -F',' '{ print $2 }' data.csv        # Print 2nd column (CSV)
awk '$3 > 50 { print $1, $3 }' data.txt  # Conditional print
awk 'BEGIN { sum=0 } { sum+=$2 } END { print sum }' data.txt
```

---

##  6. `sed` – Stream Editor for Find & Replace

```bash
sed 's/foo/bar/' file.txt                # Replace first occurrence
sed 's/foo/bar/g' file.txt               # Replace all
sed -n '2,4p' file.txt                   # Print lines 2 to 4
sed '/^#/d' file.txt                     # Delete comment lines
sed -i 's/old/new/g' file.txt            # In-place replacement
```

---

##  7. `tr` – Translate or Delete Characters

```bash
echo "HELLO" | tr 'A-Z' 'a-z'           # lowercase
tr -d '\r' < file.txt                   # remove carriage returns
echo "a,b,c" | tr ',' '\n'              # replace commas with newlines
```

---

##  8. `sort` – Sort Lines

```bash
sort names.txt
sort -r names.txt                      # Reverse order
sort -n numbers.txt                    # Numerical sort
sort -k2 -n data.txt                   # Sort by 2nd field numerically
```

---

##  9. `uniq` – Remove Duplicate Lines

```bash
sort names.txt | uniq                   # Remove duplicates
uniq -c sorted.txt                      # Count occurrences
```

---

##  10. `head` / `tail` – First or Last Lines

```bash
head file.txt                           # First 10 lines
tail file.txt                           # Last 10 lines
head -n 5 file.txt                      # First 5 lines
tail -f logfile.txt                     # Follow log in real-time
```

---

##  Real-World Scenario Example

**Print names of users with usage > 80% from a CSV:**

```bash
cat usage.csv | awk -F',' '$3 > 80 { print $1 }'
```

---

|Tool|Purpose|Common Use|
|---|---|---|
|`cat`|Display file contents|Combine files, preview text|
|`cut`|Slice text|Extract columns|
|`grep`|Search patterns|Filter lines|
|`wc`|Count lines/words/chars|Get file size info|
|`awk`|Advanced text processing|Pattern + Action|
|`sed`|Find & Replace, delete lines|Clean and modify text|
|`tr`|Translate/delete characters|Normalize data|
|`sort`|Sort lines|Order data|
|`uniq`|Remove duplicates|Count unique values|
|`head`/`tail`|View top/bottom of file|Check recent or initial entries|

---
