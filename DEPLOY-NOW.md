# Why the live sitemap still shows old links (and how to fix it)

## The links ARE changed in your project

In your folder **"Gift card checker new"**, every sitemap already uses **yourrewarrdcard.com**:

| File | Status |
|------|--------|
| `sitemap.xml` (root) | ✅ All 4 `<loc>` URLs = www.yourrewarrdcard.com |
| `public/sitemap.xml` | ✅ Same |
| `api/sitemap.js` | ✅ Returns XML with www.yourrewarrdcard.com |
| `vercel.json` | ✅ Sends /sitemap.xml to that API |

So the problem is **not** that the links weren’t changed. They were.

---

## Why you still see old links in the browser

The URL **https://www.yourrewarrdcard.com/sitemap.xml** is served by **Vercel**.  
Vercel only updates the site when it gets **new code from GitHub**.

Right now, the code that’s **live** on Vercel is an **older version** that still had **yourewardcard.com** in the sitemap.  
The version on **your PC** (this folder) has the correct links, but that newer code has **not** been deployed yet.

So:

- **On your computer:** sitemap = yourrewarrdcard.com ✅  
- **On Vercel (what the link opens):** sitemap = old yourewardcard.com ❌  

Until you push this folder to GitHub and Vercel deploys it, the live link will keep showing the old links.

---

## What you need to do (deploy the new code)

1. **Push this project to GitHub**
   - Open **Git Bash** or **PowerShell** in `c:\Projects\Gift card checker new`.
   - Run:
     ```bash
     git add .
     git status
     git commit -m "Fix sitemap: yourrewarrdcard.com and API route"
     git push origin main
     ```
   - If you use **GitHub Desktop**: open this repo, commit all changes, then click **Push origin**.

2. **Let Vercel deploy**
   - Go to [vercel.com](https://vercel.com) → your project.
   - Wait until the latest deployment shows **Ready** (usually 1–2 minutes after the push).

3. **Check the live sitemap again**
   - In an **incognito** window open: **https://www.yourrewarrdcard.com/sitemap.xml**
   - You should now see **yourrewarrdcard.com** in every `<loc>`.

4. **Update Google**
   - In Google Search Console (property **yourrewarrdcard.com**) → **Sitemaps** → remove old sitemap if needed → add **https://www.yourrewarrdcard.com/sitemap.xml** → Submit.

---

## If you don’t use Git / GitHub

- If this project isn’t in a GitHub repo yet: create a repo, then push this folder (e.g. with GitHub Desktop: “Add existing repository” → choose this folder → Push).
- Make sure the **Vercel** project is connected to **that same repo** and branch (usually `main`). Then every push will deploy the new code and the sitemap link will update.

Summary: **the links are already changed in your project; the live site will show them only after you push to GitHub and Vercel finishes deploying.**
