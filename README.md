# check_mongo_running_or_restart


### **1. Give Execution Permission**
```sh
chmod +x check_mongo.sh
```

---

### **2. Run the Script Manually**
```sh
sudo ./check_mongo.sh
```

---

### **3. Automate the Check Every 5 Minutes (Optional)**
To ensure **MongoDB restarts automatically** if it stops, use a **cron job**.

Edit crontab:
```sh
sudo crontab -e
```
Add this line:
```
*/5 * * * * /path/to/check_mongo.sh >> /var/log/mongo_monitor.log 2>&1
```
**This will:**
- Run the script **every 5 minutes**.
- Log output to `/var/log/mongo_monitor.log`.

---

### **4. Check MongoDB Status Anytime**
```sh
sudo systemctl status mongod
```

**Now MongoDB will restart automatically if it stops!** 