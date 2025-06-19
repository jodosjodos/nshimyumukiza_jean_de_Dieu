# 🚀 DevOps Express.js + Docker + NGINX Reverse Proxy

## ✅ Task Overview

This project demonstrates:

- A simple Express.js app running on port 3000
- Dockerized Node.js application
- NGINX reverse proxy setup to expose the app on port 80

---

## 📦 Files Included

- `app.js` — Express server
- `package.json` — Dependencies & scripts
- `Dockerfile` — Dockerized express app using `node:22-alpine`
- `nginx.conf` — Reverse proxy config
- `README.md` — Project setup & evidence

---

## 🛠️ How to Run

### 1. Build & Run Docker container:

```bash
docker build -t devops-app .
docker run -d --name myapp -p 3000:3000 devops-app
```

### 2. Start NGINX (on host or in a separate container):

If using host NGINX:

- Copy `nginx.conf` to `/etc/nginx/nginx.conf` or include via `/etc/nginx/conf.d/devops.conf`
- Restart NGINX:

```bash
sudo nginx -t && sudo systemctl restart nginx
```

---

## 🌐 Verify the Setup

Open your browser or use `curl`:

```bash
curl http://localhost
```

✅ You should see:

```
Hello, DevOps!
```

---

## 📸 Evidence

> Below is sample output from `curl`:

$ curl http://localhost
Hello, DevOps!

✅ Reverse proxy working correctly!

```
http://localhost --> (NGINX port 80) --> http://localhost:3000 --> Express.js
```
