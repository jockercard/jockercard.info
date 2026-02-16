# What to do next – GitHub + Vercel + your domain

Everything in the project is ready. You only need to do **3 things** in your browser and one command on your PC.

---

## Step 1: Create the repo on GitHub (you do this once)

1. Open: **https://github.com/new**
2. **Repository name:** `Yourrewardcard` (capital Y)
3. **Public.** Leave **“Add a README”** unchecked (empty repo).
4. Click **Create repository**.

---

## Step 2: Push your project to GitHub (on your PC)

**Option A – Use the script (easiest)**

1. Double‑click **`deploy-to-github.bat`** in your project folder.
2. When it asks, type your **GitHub username** and press Enter.
3. If it says “git is not recognized”, install Git: https://git-scm.com/download/win then run the script again.
4. When it asks for login, use your GitHub username and a **Personal Access Token** (not your password):  
   https://github.com/settings/tokens → Generate new token (classic) → enable **repo** → copy the token and paste it when the script asks for “Password”.

**Option B – Use Git manually**

Open **Command Prompt** or **PowerShell** in your project folder and run (replace `YOUR_USERNAME` with your GitHub username):

```bat
cd /d "c:\Projects\Gift card checker new"
git init
git add .
git commit -m "yourewardcard site"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/Yourrewardcard.git
git push -u origin main
```

When asked for password, use a **Personal Access Token** from https://github.com/settings/tokens (not your GitHub password).

---

## Step 3: Deploy on Vercel (you do this in the browser)

1. Open: **https://vercel.com** and sign in (or sign up with GitHub).
2. Click **Add New…** → **Project**.
3. **Import** the repo **Yourrewardcard** (from your GitHub list).
4. **Project name:** leave as `Yourrewardcard` (or change if you like).
5. **Framework Preset:** leave as **Other** (or **Vite** if it picks it up – both work).
6. **Root Directory:** leave empty.
7. **Build and Output:** leave defaults. The project has **vercel.json** so Vercel will serve your site as-is.
8. Click **Deploy**.
9. Wait ~1 minute. You’ll get a URL like **https://yourrewardcard.vercel.app** (or similar).

---

## Step 4: Connect your domain (yourrewarrdcard.com)

1. In Vercel, open your **Yourrewardcard** project.
2. Go to **Settings** → **Domains**.
3. Enter **yourrewarrdcard.com** and click **Add**.
4. Also add **www.yourrewarrdcard.com** if you want.
5. Vercel will show the DNS records you need.

**In Namecheap:**

1. Log in to **Namecheap** → **Domain List** → **Manage** next to **yourrewarrdcard.com**.
2. Either:
   - **Use Vercel nameservers:** Domain → **Nameservers** → **Custom DNS** → paste the 2 nameservers from Vercel (e.g. `ns1.vercel-dns.com`, `ns2.vercel-dns.com`) → **Save**.
   - **Or use Namecheap DNS:** **Advanced DNS** → add the **A** and **CNAME** records Vercel shows (copy Host and Value exactly) → **Save**.

6. Wait 10–30 minutes (sometimes up to 24–48 hours). Vercel will issue HTTPS automatically.
7. Test: **https://yourrewarrdcard.com** and **https://yourrewarrdcard.com/faq**, **https://yourrewarrdcard.com/contact**.

---

## Summary

| Step | Where | What you do |
|------|--------|-------------|
| 1 | GitHub | Create empty repo **Yourrewardcard** at https://github.com/new |
| 2 | Your PC | Run **deploy-to-github.bat** (or the git commands above) and push |
| 3 | Vercel | **Add New → Project** → import **Yourrewardcard** → **Deploy** |
| 4 | Vercel + Namecheap | In Vercel add domain **yourrewarrdcard.com**; in Namecheap set nameservers or A/CNAME as Vercel shows |

After Step 3 your site is live at your Vercel URL. After Step 4 it’s also at **https://yourrewarrdcard.com**.
