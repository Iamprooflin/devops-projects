# Flask CI/CD on AWS (CodePipeline → CodeBuild → CodeDeploy → EC2)

A minimal, non-developer-friendly sample app to demonstrate a full CI/CD pipeline on AWS.
Deployed to a single EC2 instance using CodeDeploy. Source: GitHub. Build: CodeBuild. Orchestration: CodePipeline.

## App
- Python Flask "Hello World" on port 5000.
- Files include: `app.py`, `requirements.txt`, `buildspec.yml`, `appspec.yml`, and scripts under `scripts/`.

## Quick Start (High Level)
1. Create a **GitHub repo** and push these files.
2. Launch a **t2.micro (Free Tier) EC2** with Amazon Linux 2 and open Security Group port **5000** and **22**.
3. Install **CodeDeploy agent** on EC2.
4. Create a **CodeDeploy Application + Deployment Group** targeting your EC2 instance (by tag).
5. Create a **CodeBuild** project (Linux, standard image) and use `buildspec.yml`.
6. Create a **CodePipeline**: Source (GitHub) → Build (CodeBuild) → Deploy (CodeDeploy).
7. Push code to GitHub. Pipeline runs and deploys. Visit `http://<EC2-Public-IP>:5000/`.

## Region Note
Use your region (e.g., `ap-south-1`) consistently across all services.

## Cost Safety
- Use `t2.micro`.
- Delete resources when done (terminate EC2, delete pipeline/build/app).