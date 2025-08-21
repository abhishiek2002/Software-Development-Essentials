# 📂 Using the Exercise Files

## 📥 Downloading the Exercise Files

All scripts used in this course are available for download from the **course overview page**. Look for the link labeled **Exercise Files**.

Once downloaded:

* Store them somewhere convenient, like your **Desktop**.
* The main folder contains a **subfolder for each chapter**.
* Each chapter folder holds individual **SQL script files**.

These `.sql` files can be opened with:

* Any text editor (e.g., **Notepad**)
* Directly in **SQL Server Management Studio (SSMS)** for execution.

---

## 📏 Enabling Line Numbers in SSMS

For easier navigation while following along:

1. Go to **Tools → Options** in SSMS.
2. Navigate to **Text Editor → Transact-SQL → General**.
3. Check **Line Numbers**.
4. Click **OK**.

---

## 🗄 Setting Up the Sample Database: Wide World Importers

We’ll use Microsoft’s **Wide World Importers** sample database throughout the course.

### Step 1: Download the Backup File

1. Visit Microsoft’s GitHub page for Wide World Importers.
2. Download the file **WideWorldImporters-Full.bak**.

### Step 2: Move the Backup File

1. Locate the `.bak` file in your **Downloads** folder.
2. **Cut** the file.
3. Navigate to:

   ```
   C:\Program Files\Microsoft SQL Server\<YourServerName>\MSSQL\Backup
   ```

   Example: `MSSQL15.MSSQLSERVER`.
4. Paste the file there.
5. If you get a permission prompt, click **Continue**.

### Step 3: Restore the Database

1. In SSMS, right-click **Databases** in the **Object Explorer**.
2. Select **Restore Database**.
3. Choose **Device** and click the ellipses (`...`).
4. Click **Add**, navigate to the backup folder, select the `.bak` file.
5. Click **OK** until the restore completes.

### Step 4: Verify Installation

* The **Wide World Importers** database should now appear in **Object Explorer**.
* If it doesn’t, right-click **Databases** and select **Refresh**.

---

✅ You’re now ready to run all course scripts against the Wide World Importers database to explore SQL Server’s programmability features.
