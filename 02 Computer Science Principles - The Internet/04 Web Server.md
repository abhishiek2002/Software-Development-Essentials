# 🌐 Identifying a Server with URLs

When you enter a **URL** into a web browser, it’s more than just typing a web address. A URL typically has three main components:

* **Top-Level Domain (TLD)**
* **Domain Name**
* **Subdomain**

A **DNS (Domain Name System)** server plays a crucial role by translating human-friendly domain names into machine-friendly **IP addresses**.

## 🏢 Example: Company Domain & Subdomains

Let’s say a company owns:

* **Domain Name**: `dougwinnie.com`
* **Subdomains**: `www`, `dev`, `prod`, `beta`

Each subdomain maps to a unique IP address.

> 🔎 Example: `www.dougwinnie.com` → a specific web server's IP address

However, subdomains can also **redirect** traffic. This behavior is governed by DNS **records**:

### 📘 DNS Record Types:

* **A Record** (Address Record): Directly maps a domain to an IP address.
* **CNAME Record** (Canonical Name Record): Maps a domain to another domain name.

#### 🧠 Case Study:

1. `dev.example.com` is mapped to `123.45.67.89` with an A Record.
2. `test.example.com` is redirected to `dev.example.com` with a CNAME Record.

This setup ensures browsers and networks can accurately find servers using just a URL.

---

# 🌍 HTTP and Requests

When using a browser, you send a **request** to a web server, and in return, get the **response** to be displayed. This back-and-forth communication uses the **HTTP (Hypertext Transfer Protocol)** on top of **TCP/IP**.

## 🤝 How It Works:

1. Enter URL `www.dougwinnie.com`
2. Browser asks DNS for the IP address
3. Sends an **HTTP request** to the IP
4. Server listens and sends back a response

The server listens using a special background program called a **daemon** — specifically the `HTTPD` program.

### 🔁 Common HTTP Methods:

* **GET**: Requests information (e.g., a web page)

  * Returns **header** (server info, date, response code)
  * Returns **body** (actual HTML content)
* **POST**: Sends information (e.g., submitting a form)

  * Server accepts data and sends back a response

### 📡 Response Codes:

* `200` – OK
* `404` – Not Found

---

# 🕸 Hypertext and HTML

Books use tables of contents and indexes to help navigate. The web does the same — but far more efficiently — through **hypertext** and **HTML (Hypertext Markup Language)**.

## 🧭 Hypertext:

Clickable text that links one page to another.

Example:

* `index.html` → Overview page about fruit
* `apple.html`, `pear.html`, `banana.html` → Dedicated pages for each fruit
* Each page can link to others (e.g., Apple ↔ Pear)

## ✍️ HTML Structure:

HTML uses **tags** to structure and display content.

### 🔖 Basic Tags:

* `<h1>` to `<h6>` – Headings
* `<img>` – Image
* `<a href="apple.html">Apple</a>` – Hyperlink

Each tag comes in pairs, and **attributes** (like `href`) define behavior.

### 📈 HTML Evolution:

* Current version: **HTML5**
* Adds support for **mobile**, **databases**, **media**, and **hardware integration**

---

# 🍪 Remembering Requests with Cookies

Each web request is **stateless** — meaning the server treats each one like it's the first. Enter **cookies**: small files that store information about your browser session.

## 💡 Use Cases:

* Saving your **login username**
* Remembering items in a **shopping cart**
* Identifying **return visitors** vs. **new visitors**

> Think of a cookie as a **fortune cookie** — a small message stored inside.

Cookies make websites more **personalized**. They’re just regular files and can be deleted at any time. While some cookies may track behavior, most serve helpful functions.

---

# 🔒 Securing Requests with SSL and TLS

By default, data sent over the Internet is **publicly visible**. That includes sensitive info like:

* Bank account numbers
* Credit card details
* Personal IDs

We solve this vulnerability with **encryption** using **SSL (Secure Sockets Layer)** and its successor **TLS (Transport Layer Security)**.

### 🔐 TLS Basics:

1. **Handshaking**: Mutual authentication between client and server
2. **Encryption**: Data is scrambled so only the intended recipient can read it
3. **Preserved Headers**: Ensures packets still route properly over TCP/IP

## 🛡️ Certificates:

* Provided by trusted authorities
* Contain:

  * Domain name
  * Public key
  * Owner info
  * Validity period

### 📎 Visual Indicators:

* HTTPS in the URL
* Lock icon in the browser

These ensure that private information remains private.

---

> 📚 **Summary**: URLs, DNS records, HTTP requests, HTML structure, cookies, and encrypted communication all play essential roles in delivering secure, reliable, and personalized web experiences. This invisible dance of technologies powers the modern internet — seamlessly, behind the scenes.
