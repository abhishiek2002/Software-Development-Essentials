# 📡 Sending and Receiving Information on the Internet

## 🌐 Everything Begins with Bits

Everything that we create on a computer—whether it's a photo, a video, or an email—is ultimately translated into **digital information** using *bits*. These bits could be as few as a handful or stretch into billions, and they all need a way to travel reliably over the internet.

But how? The internet solves this by **breaking data into manageable chunks**, called **packets**.

### 📦 What’s Inside a Packet?

Each packet contains:

* **Sender’s address**: Like a return address on a letter, this allows responses or error messages to find their way back.
* **Recipient’s address**: So it knows where to go.
* **Packet length**: So the receiver knows if any data is missing.
* **Sequence information**: Which tells the system how many packets exist and where this one fits.

Imagine you and your friends are on a road trip in different cars. A traffic jam might force some of you to take a detour. Similarly, packets often take **different routes** through the network, but eventually arrive at the destination and are reassembled.

---

# 📬 The Internet Protocol (IP) & IP Addresses

To send a package in real life, you need an address. On the internet, addresses are numeric and standardized by the **Internet Protocol (IP)**.

### IPv4: The First Address Book

IPv4 addresses look like this: `192.168.1.1`. It's made up of 4 groups of numbers from 0–255, offering over **4 billion possible unique addresses**. Each device gets an IP address—public or private:

* **Public IP**: Your home’s internet-facing address.
* **Private IP**: Used within your personal network, assigned by your router.

These addresses are assigned and managed globally by the **Internet Assigned Numbers Authority (IANA)**.

### 🧭 Routers as Digital Navigators

Your router connects your private home network to the internet. It directs data:

* **Internally**, among devices like your laptop and smart speaker.
* **Externally**, to websites or cloud services.

Routers use **configuration tables** to determine paths. If your primary internet connection fails, it can route data through a backup path—ensuring reliability.

---

# 🚀 Scaling the Internet: IPv6

### The Problem with IPv4

With billions of new devices coming online, IPv4’s 4 billion addresses were quickly running out.

### Enter IPv6

Created in **1995** by the Internet Engineering Task Force (IETF), IPv6 uses **128 bits** instead of 32—offering:

* **340 undecillion** (yes, that’s 340 followed by 36 zeros) possible addresses.
* Enough for *every grain of sand on Earth* to have its own address, many times over.

### What IPv6 Looks Like:

IPv6 addresses look like: `2001:0db8:85a3:0000:0000:8a2e:0370:7334`

* Uses **hexadecimal** and **colons**.
* Can be **compressed** for readability.

Operating systems now use **dual stack** to support both IPv4 and IPv6 until the transition is complete.

---

# 🌍 Domain Names and DNS

Humans aren’t great at remembering numeric IPs. That’s why we use **domain names**, like `www.dougwinnie.com`, which are mapped to IP addresses via the **Domain Name System (DNS)**.

### DNS in Action:

When you enter a domain in your browser:

1. It sends a request to a **DNS server**.
2. If the first server doesn’t know the IP, it asks other DNS servers.
3. Once the IP is found, it’s sent back to your computer.
4. Then the actual data request is sent to the website’s server.

### Anatomy of a Domain:

* **Top-Level Domain (TLD)**: `.com`, `.edu`, `.uk` (managed by IANA)
* **Domain Name**: `dougwinnie`
* **Subdomain**: `www` (or `smtp` for email, etc.)

DNS translates human-friendly addresses into machine-friendly IPs, making the internet intuitive and accessible.

---

# 🧭 Routers: The Internet's GPS

Routers act as **traffic directors** for packets:

* At home, your router decides if a packet should go to the internet or another device in your house.
* Across the internet, **a network of routers** directs packets across countries and oceans.

Each router checks a packet’s header and uses a **configuration table** to decide its next step. Think of it as **packet-by-packet GPS**.

Routers can even detect failure. For example, in a banking network, if the main internet connection is down, a router will switch traffic to a backup connection, maintaining service.

---

# 🧱 Packets and Fault Tolerance

Packets are about **1 kilobyte each**. For big files (e.g. audio, emails, images), **dozens or hundreds** of packets are created.

As they move through the network:

* Packets may take **different paths** due to traffic or failure.
* Nodes (like junctions) evaluate each packet's **header** to decide the next hop.

### Try It Yourself: Ping

Use the **ping** command to test packet travel:

```bash
ping google.com
```

* Sends 4 packets
* Reports time taken and packet loss

This simulates how packets travel to a destination and back, showing **network speed and health**.

---

# ✅ TCP: Transmission Control Protocol

### Why TCP Exists

When hundreds or thousands of packets arrive at the destination:

* They’re often **out of order**
* Some may be **missing or corrupted**

TCP comes to the rescue:

* Checks how many packets there are
* Uses headers to **reorder** them
* Detects **incomplete/missing packets** and **requests resends**
* Merges packets into the original file

### 🔁 TCP vs UDP

* **TCP** (Transmission Control Protocol): Prioritizes **reliability** over speed.
* **UDP** (User Datagram Protocol): Sacrifices reliability for **speed** (used in streaming, games, etc.)

Together with IP, this creates the backbone of internet communication: **TCP/IP**.

---

> 💡 With the Internet’s robust protocols, global addressing, and fault-tolerant architecture, we can stream movies, send emails, play games, and connect billions of devices—every single day.

---
