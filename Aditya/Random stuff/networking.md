
## 🔚 Summary: Commands You Must Master

| Task                    | Command                 |
| ----------------------- | ----------------------- |
| Check IP/interface      | `ip a`, `ip link`       |
| Test network            | `ping`, `curl`, `wget`  |
| DNS resolution          | `dig`, `nslookup`       |
| Open ports/services     | `ss`, `lsof`, `netstat` |
| Firewall                | `ufw`, `iptables`       |
| Traceroute/packet route | `traceroute`            |
| Port testing            | `nc -zv <host> <port>`  |

---

### ✅ **1. Check IP / Interface**

|Command|Use|
|---|---|
|`ip a`|Shows all IP addresses and interfaces.|
|`ip link`|Lists network interfaces and their states (up/down).|

**🧪 Try:**

```bash
ip a
ip link
```

---

### ✅ **2. Test Network Connectivity**

|Command|Use|
|---|---|
|`ping <host>`|Checks if host is reachable (ICMP).|
|`curl <url>`|Tests HTTP/HTTPS endpoints.|
|`wget <url>`|Downloads files; also tests HTTP connectivity.|

**🧪 Try:**

```bash
ping google.com
curl https://example.com
wget https://example.com
```

---

### ✅ **3. DNS Resolution**

|Command|Use|
|---|---|
|`dig <domain>`|Detailed DNS query (e.g., A record, NS, MX).|
|`nslookup <domain>`|Legacy but simple DNS lookup tool.|

**🧪 Try:**

```bash
dig google.com
nslookup github.com
```

---

### ✅ **4. Open Ports / Services**

|Command|Use|
|---|---|
|`ss -tuln`|Shows listening ports (TCP/UDP).|
|`lsof -i`|Lists open files + sockets (useful for checking which process uses a port).|
|`netstat -tuln`|Older alternative to `ss`.|

**🧪 Try:**

```bash
ss -tuln
sudo lsof -i :22
netstat -tuln
```

---

### ✅ **5. Firewall**

|Command|Use|
|---|---|
|`ufw status`|Easy firewall tool (Ubuntu).|
|`iptables -L`|Advanced packet filter/firewall (low-level).|

**🧪 Try:**

```bash
sudo ufw status
sudo iptables -L
```

---

### ✅ **6. Traceroute / Packet Route**

|Command|Use|
|---|---|
|`traceroute <host>`|Shows hops/routers between you and destination.|

**🧪 Try:**

```bash
traceroute google.com
```

(If `traceroute` is not found, install with: `sudo apt install traceroute`)

---

### ✅ **7. Port Testing**

|Command|Use|
|---|---|
|`nc -zv <host> <port>`|Tests if a TCP port is open (z: scan, v: verbose).|

**🧪 Try:**

```bash
nc -zv google.com 80
nc -zv github.com 443
```

---

### 🧠 Tip to Practice:

Make a script that:

1. Accepts a domain name as input.
    
2. Pings it, gets its IP, checks DNS resolution.
    
3. Tests if port 80 and 443 are open.
    


Awesome job running all those commands, Aditya! 🔥  
Now let me **break down only the important parts of each output** so you can understand what they’re telling you and why they matter for real-world use (like troubleshooting in cloud or DevOps).

---

## ✅ `ip a` – Check IP Address & Interfaces

```bash
3: wlo1: ... state UP ...
    inet 192.168.1.38/24 ...
```

### Important:

- `wlo1`: Your **Wi-Fi interface** (active one).
    
- `inet 192.168.1.38/24`: This is your **IP address** on the local network.
    
- `state UP`: Interface is active.
    
- Interfaces like `docker0` or `br-*`: Created by **Docker**. Ignore for now unless working with containers.
    

🔹 **Use this to know your IP and whether your network is working.**

---

## ✅ `ip link` – Show Interface Status

```bash
3: wlo1: ... state UP ...
```

### Important:

- Confirms again `wlo1` is active.
    
- `eno1` (Ethernet) is `DOWN`, so you’re not using a LAN cable.
    
- Others (`docker0`, `br-*`) are virtual interfaces – ignore unless you’re using Docker networking.
    

🔹 **Use this to check which interfaces are up/down.**

---

## ✅ `ping google.com`

```bash
64 bytes from ... time=7.57 ms
...
time=1033 ms
```

### Important:

- You are **getting replies**, so your network is working.
    
- `time=7.57 ms`: Very fast → good connection.
    
- `time=1033 ms`: Slow response (could be temporary lag or packet loss).
    

🔹 **Use this to check if a host is reachable and your connection is healthy.**

---

## ❌ `curl curl https://chatgbt.com` → You wrote the command wrong

### What happened:

```bash
curl: (6) Could not resolve host: curl
```

- You accidentally typed `curl curl https://...` – you only need **one `curl`**:
    

```bash
curl https://chatgbt.com
```

---

## ✅ `dig google.com`

```bash
;; ANSWER SECTION:
google.com.	295	IN	A	142.250.70.46
```

### Important:

- This shows that **DNS is working**.
    
- `142.250.70.46`: IP address of `google.com`.
    

🔹 Use `dig` to confirm domain names resolve to IPs.

---

## ✅ `nslookup github.com`

```bash
Name: github.com
Address: 20.207.73.82
```

### Important:

- Confirms DNS works for `github.com`.
    
- Shows resolved IP.
    

🔹 `nslookup` is simpler than `dig`, good for quick checks.

---

## ✅ `ss -tuln` – View Listening Ports

```bash
tcp LISTEN 0 128 0.0.0.0:22 ...
tcp LISTEN 0 511 *:80
tcp LISTEN 0 128 *:8080
```

### Important:

- `22`: SSH is listening → remote login possible.
    
- `80`: Something is serving a website (HTTP).
    
- `8080`: Common for apps (like web servers or Jenkins).
    

🔹 Use `ss` to check if services are listening properly on ports.

---

## ✅ `sudo lsof -i :22`

```bash
COMMAND PID USER ... NAME
sshd    1119 root ... TCP *:ssh (LISTEN)
```

### Important:

- Confirms `sshd` (SSH server) is listening on port 22.
    
- Shows **which process owns the port**.
    

🔹 Use when you want to see **what app is using a port**.

---

## ✅ `sudo ufw status`

```bash
Status: active

8080 ALLOW Anywhere
30000/tcp ALLOW Anywhere
...
```

### Important:

- UFW (Firewall) is **enabled**.
    
- Ports `8080`, `30000`, and `32608` are **open**.
    
- `(v6)` = Also open for IPv6 connections.
    

🔹 Use this to **check or manage which ports are allowed** through the firewall.

---

## ✅ `nc -zv github.com 443`

```bash
Connection to github.com (20.207.73.82) 443 port [tcp/https] succeeded!
```

### Important:

- This confirms port 443 (HTTPS) is **open and reachable**.
    
- Useful to test **if a remote service is accepting connections**.
    

🔹 Think of this as a simple port-scanner/checker.

---

## 🔚 Summary (What You Should Focus On):

|Tool|Why It's Useful|What to Look For|
|---|---|---|
|`ip a`|Check your IP address & active interfaces|Look for `inet` and `state UP`|
|`ping`|Test if site is reachable|Replies + `time=... ms`|
|`curl`|See if you can reach a web page|Page HTML or errors|
|`dig`|Check DNS resolution|IP in `ANSWER SECTION`|
|`nslookup`|Same as `dig`, but simpler|IP address of the site|
|`ss -tuln`|See which ports/services are open|`LISTEN` on ports like `22`, `80`, `8080`|
|`lsof -i`|See which app is using a port|Shows command and port like `sshd` on port `22`|
|`ufw`|Check firewall rules|Confirm which ports are `ALLOW`ed|
|`nc`|Test if a remote port is open|Should say “succeeded”|

---


