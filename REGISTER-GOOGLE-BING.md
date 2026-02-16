# How to Register Your Site on Google and Bing

Get **Your Reward Card** (yourrewarrdcard.com) listed in Google and Bing search.

---

## Use your live URL

Use the URL where your site actually loads, for example:

- **https://www.yourrewarrdcard.com** (recommended if www is your main URL), or  
- **https://yourrewarrdcard.com**, or  
- **https://yourrewardcard.vercel.app** (if you’re not using the custom domain yet)

Replace `https://www.yourrewarrdcard.com` below with the one you use.

---

## 1. Register on Google (Google Search Console)

1. Go to **https://search.google.com/search-console**
2. Sign in with your Google account.
3. Click **“Add property”**.
4. Choose **“URL prefix”** and enter: `https://www.yourrewarrdcard.com` (or your real URL).
5. Click **Continue**.
6. **Verify ownership:**
   - Choose **“HTML tag”**.
   - Google will show a meta tag like:  
     `<meta name="google-site-verification" content="XXXXXXXX" />`
   - If the tag is **different** from what’s in your `index.html`, update the `content="..."` in `index.html` to match Google’s value, redeploy, then click **“Verify”** in Search Console.
   - If it’s **the same** (you already have that tag on the site), just click **“Verify”**.
7. After verification:
   - Open **“Sitemaps”** in the left menu.
   - Enter: `https://www.yourrewarrdcard.com/sitemap.xml`
   - Click **Submit**.

---

## 2. Register on Bing (Bing Webmaster Tools)

1. Go to **https://www.bing.com/webmasters**
2. Sign in with your Microsoft account.
3. Click **“Add a site”**.
4. Enter your URL: `https://www.yourrewarrdcard.com` (or your real URL).
5. **Verify ownership:**
   - Choose **“Meta tag”** (or “HTML meta tag”).
   - Bing will show a tag like:  
     `<meta name="msvalidate.01" content="XXXXXXXX" />`
   - If the tag is **different** from what’s in your `index.html`, update the `content="..."` in `index.html` to match Bing’s value, redeploy, then click **“Verify”** in Bing.
   - If it’s **the same**, just click **“Verify”**.
6. After verification:
   - Go to **“Sitemaps”** (or **URL Submission**).
   - Submit: `https://www.yourrewarrdcard.com/sitemap.xml`
   - Optionally use **“Submit URLs”** and paste your homepage URL.

---

## Sitemap and robots.txt

- Your sitemap URL for both tools: **https://www.yourrewarrdcard.com/sitemap.xml**
- Make sure **robots.txt** and **sitemap.xml** use your real domain.  
  Right now they point to `yourrewarrdcard.com`. If your live site is **yourrewarrdcard.com**, update:
  - **robots.txt** – `Sitemap:` line  
  - **sitemap.xml** – all `<loc>` URLs  

  So they use `https://www.yourrewarrdcard.com` (or the exact URL you use).

---

## After registration

- Indexing can take from a few days to a few weeks.
- In **Google Search Console**: check **“URL Inspection”** to request indexing for important pages.
- In **Bing**: use **“URL Submission”** to submit important URLs.
- Keep the site live and avoid changing the domain often; that helps ranking.

---

## Quick links

| Service | URL |
|--------|-----|
| Google Search Console | https://search.google.com/search-console |
| Bing Webmaster Tools  | https://www.bing.com/webmasters        |
