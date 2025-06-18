
- **Backup Script**  
    → Backup `/var/log` and upload to S3
    
- **System Health Check Script**  
    → Check CPU, memory, disk usage and log it
    
- **Auto Start EC2 App**  
    → Bash in `user_data` to auto-install Docker + run app
    
- **Log Rotation**  
    → Rotate and compress logs using bash + cron
    
- **Multiple Server Ping Script**  
    → Ping a list of servers and log their statuses