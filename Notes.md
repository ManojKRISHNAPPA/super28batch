# 📁 S3 File Manager – Simplified File Access for Non-Technical Teams

## 🔍 Overview

To streamline file access and reduce reliance on the AWS Console for non-technical users, I’ve developed a simple **web-based S3 File Browser** using **Streamlit** and **Boto3**.

This tool allows authorized users to:
- **Upload files** directly to a specific S3 bucket
- **View files** available in that bucket
- **Download files** securely with a click

## 🛠️ Problem Solved

In many organizations, S3 buckets are typically managed via the AWS Console or CLI tools, which are not user-friendly for non-technical team members. Granting direct AWS access to such users can:
- Introduce security risks
- Lead to accidental deletion or modification of critical files
- Increase operational overhead for the tech team

**This tool solves that by providing a controlled interface with limited access to just one bucket**, ensuring data integrity and ease of use.

---

## 🌐 How It Works

### 🧱 Tech Stack
- **Frontend/UI**: [Streamlit](https://streamlit.io/) – Rapid UI for data apps
- **Backend/API**: [Boto3](https://boto3.amazonaws.com/v1/documentation/api/latest/index.html) – AWS SDK for Python
- **Cloud Storage**: Amazon S3 – Secure object storage

### ✅ Key Features
1. **🖼️ User-Friendly Interface**  
   A clean and minimal web interface accessible via browser.

2. **🔐 Secure Access**  
   Uses AWS credentials in the backend to interact with only a specific S3 bucket — no AWS account access required for users.

3. **📤 Upload Files**  
   Users can upload documents or media directly into the predefined S3 bucket with a single click.

4. **📁 List Files**  
   Dynamically fetches and displays all files currently in the bucket.

5. **⬇️ Download Files**  
   Users can download any listed file without needing the AWS Console or S3 URL links.

6. **🧼 Temporary File Handling**  
   Files downloaded are cleaned up locally after download to ensure server hygiene.

---

## 🔒 Security & Permissions

- The app is tied to **one specific S3 bucket** using **hardcoded credentials**. In production, these should be:
  - Stored securely using environment variables or secrets managers (like AWS Secrets Manager)
  - Given the least privileges using IAM policies (only access to the necessary bucket and operations: `s3:GetObject`, `s3:PutObject`, `s3:ListBucket`)
- No users need AWS credentials or IAM roles — the app handles all S3 interactions on their behalf.


## 🚀 How to Use

1. **Run the app**:  
   ```bash
   streamlit run main.py
   ```

2. **Open in browser**:  
   Navigate to `http://localhost:8501`

3. **Upload or download files** with ease!

---

## 📌 Next Steps / Enhancements

- ✅ Move credentials to environment variables or use IAM roles (if deployed on EC2 or ECS)
- ✅ Add authentication (e.g., login system) to limit access
- ⬆️ Add support for folder structure navigation
- 📄 Add file preview for supported file types (PDF, images, text)
