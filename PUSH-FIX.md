# Fix the push (run in your PC terminal)

Git isn’t available in Cursor’s environment, so you need to run these on your own machine (Command Prompt or PowerShell in your project folder).

---

## What happened

- Your **remote** is set to **gc-check** (`https://github.com/gccheck-balance/gc-check.git`).
- The push was **rejected** because the remote has commits (e.g. a README) that you don’t have locally.

---

## Option A: Push to the **Yourrewardcard** repo (recommended)

Use this if you already created a new repo at https://github.com/new named **Yourrewardcard**.

1. **Double‑click `fix-push-and-deploy.bat`** in your project folder.
2. When it asks, type **1** and press Enter.
3. It will point the remote to **Yourrewardcard** and push (with `--force` so your current project overwrites the remote).
4. If you see “success” or “Everything up-to-date”, go to **https://vercel.com** → Add New → Project → import **Yourrewardcard** → Deploy.

If you **haven’t** created the **Yourrewardcard** repo yet:

1. Go to **https://github.com/new**
2. Repository name: **Yourrewardcard** (capital Y)
3. Create repository (empty, no README).
4. Then run **fix-push-and-deploy.bat** and choose **1**.

---

## Option B: Keep using the **gc-check** repo

Use this if you want this project to stay in **gc-check** and you’re okay merging with what’s on the remote.

1. **Double‑click `fix-push-and-deploy.bat`**.
2. Type **2** and press Enter.
3. It will pull from **gc-check** (rebase) and then push.

Or run these in **Command Prompt** in your project folder:

```bat
cd /d "c:\Projects\Gift card checker new"
git pull origin main --rebase
git push origin main
```

---

## After the push works

1. Open **https://vercel.com** and sign in (e.g. with GitHub).
2. **Add New** → **Project**.
3. Import the repo you pushed to (**Yourrewardcard** or **gc-check**).
4. Click **Deploy**.
5. In the project: **Settings** → **Domains** → add **yourrewarrdcard.com** and set DNS in Namecheap as in **CONNECT-DOMAIN.md**.
