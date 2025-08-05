# 🔖 Twelve-Factor App Principles (Complete Guide)

> A foundational approach to **design, develop, and deploy** modern web applications with agility, efficiency, and scalability. Originally created by Heroku engineers in 2011.

---

## 🌐 Overview

* **Twelve-Factor App** = 12 principles for building **scalable**, **maintainable**, and **portable** web services.
* While designed for web apps, the principles apply broadly across app types.
* Aligns perfectly with **DevOps**, **CI/CD**, and **cloud-native development**.

---

## ① Codebase

> **"One codebase tracked in version control, many deploys"**

* Each application must have **its own codebase**, tracked in **Git**, **Subversion**, etc.
* Shared functionalities should be extracted into a **shared library** with its own codebase.
* Ensures one-to-one mapping between:

  * App → Codebase
  * Environments (dev/stage/prod) → Different deployments of same codebase

---

## ② Dependencies

> **"Explicitly declare and isolate dependencies"**

* Applications should **never rely on system-wide packages**.
* All dependencies (including versions) must be declared explicitly:

  * Example: `requirements.txt` in Python
  * Use package managers like npm, pip, Maven, etc.
* Promotes **portability** and **reliability** across environments.

---

## ③ Config

> **"Store config in the environment"**

* All environment-specific config (e.g., credentials, URLs) must be:

  * **Externalized from code**
  * Stored as **environment variables**, not hardcoded or stored in files like `web.config`
* Benefit: same code + different config = multiple deploy environments

---

## ④ Backing Services

> **"Treat backing services as attached resources"**

* Backing services: databases, messaging systems, caches, etc.
* They should be **accessed via a URL or connection string**.
* The application must not care whether:

  * The service is local or remote
  * It’s running in dev, QA, or prod

---

## ⑤ Build, Release, Run

> **"Strictly separate build and run stages"**

* Lifecycle stages:

  1. **Build** – Convert code into a build artifact.
  2. **Release** – Combine build with config.
  3. **Run** – Launch the app in the runtime.

* You must:

  * **Not modify code or config in run stage**
  * Roll back or restart with a new release instead

---

## ⑥ Processes

> **"Execute the app as one or more stateless processes"**

* All processes should be **stateless and independent**.

* State (like sessions or cache) should be kept in:

  * **Databases**
  * **External services**

* Enables:

  * **Horizontal scaling**
  * **Process resiliency**

---

## ⑦ Port Binding

> **"Export services via port binding"**

* The app should **self-contain** its web server (e.g., Flask binds to port 5000).
* Don’t rely on an external web server like Apache or Nginx to wrap your app.
* Helps with:

  * **Scaling**
  * **Routing traffic via load balancers or gateways**

---

## ⑧ Concurrency

> **"Scale out via the process model"**

* Run multiple instances of independent processes:

  * Web processes (handling HTTP requests)
  * Background workers

* Avoid:

  * Embedding background jobs within web processes
  * Restricting to single daemon processes

* Encourages scalable, concurrent execution (just like Unix daemons).

---

## ⑨ Disposability

> **"Maximize robustness with fast startup and graceful shutdown"**

* Processes should:

  * **Start quickly**
  * **Shutdown cleanly** (handle termination signals)
  * Avoid data loss or locking during shutdown

* Supports:

  * **Elastic scaling**
  * **Reliable deploys** (e.g., Docker containers coming up/down)

---

## ⑩ Dev/Prod Parity

> **"Keep development, staging, and production as similar as possible"**

* Not about scale — it’s about **consistency**:

  1. Continuous deployment between dev and prod
  2. Developers work closely with ops
  3. Identical OS, runtime, and libraries across environments

---

## ⑪ Logs

> **"Treat logs as event streams"**

* Don’t manage logs in your app.
* Emit logs to **stdout/stderr** using simple print/log commands.
* Let external tools handle:

  * **Storage** (e.g., FluentD, Logstash)
  * **Analytics** (e.g., Splunk, ELK)

---

## ⑫ Admin Processes

> **"Run admin/management tasks as one-off processes"**

* Scripts for things like:

  * Database migrations
  * Data cleanups
* Should:

  * Be part of the codebase
  * Be run using the same environment/config as the app

---

## 📄 Final Summary

| Principle # | Name              | Key Idea                                                              |
| ----------- | ----------------- | --------------------------------------------------------------------- |
| 1           | Codebase          | One codebase per app in version control                               |
| 2           | Dependencies      | Explicitly declare and isolate them                                   |
| 3           | Config            | Store in environment, not in code                                     |
| 4           | Backing Services  | Treat external services as attached resources                         |
| 5           | Build/Release/Run | Strict separation of build, release, and run stages                   |
| 6           | Processes         | Stateless and independent processes                                   |
| 7           | Port Binding      | App should expose itself via a port, not rely on external servers     |
| 8           | Concurrency       | Use multiple process types for scalability                            |
| 9           | Disposability     | Fast startup and graceful shutdown                                    |
| 10          | Dev/Prod Parity   | Keep environments as similar as possible                              |
| 11          | Logs              | Treat logs as event streams, not as internal storage responsibilities |
| 12          | Admin Processes   | Admin tasks should be one-off, versioned, and run in the same context |

---

## 🚀 Why It Matters

* These principles make apps:

  * **DevOps-ready**
  * **Cloud-native**
  * **Scalable and maintainable**
* Strong foundation for building apps in **microservices**, **containerized**, and **CI/CD** environments.

> Take time to internalize and apply them — they enable robust and modern software delivery.
