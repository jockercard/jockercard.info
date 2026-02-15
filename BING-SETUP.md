# Bing Search Setup – Get YouRewardCard to Appear in Search

## What's Done

- **robots.txt** – Allows all search engines to crawl your site
- **sitemap.xml** – Tells Bing/Google where your pages are
- **SEO tags** – Updated with keywords: gift card balance check, gift card amount check, etc.

---

## Step 1: Update Your URLs (if needed)

When you deploy, use your actual site URL (e.g. `https://your-domain.com`).

Edit these files and replace `https://your-domain.com` with your real URL:

- **robots.txt** – line with `Sitemap:`
- **sitemap.xml** – the `<loc>` tag
- **index.html** – the `<link rel="canonical">` tag

---

## Step 2: Deploy your site

Deploy your project to your chosen host. When you have a live URL, continue to Step 3.

---

## Step 3: Add Site to Bing Webmaster Tools

1. Go to **https://www.bing.com/webmasters**
2. Sign in with your Microsoft account
3. Click **Add a site**
4. Enter your site URL (e.g. `https://your-domain.com`)
5. Choose verification method:
   - **Option A:** Add the XML file they give you to your site
   - **Option B:** Add the meta tag to your index.html `<head>` (Bing will show you the tag)
6. Click **Verify**
7. After verification: **URL Submission** → Submit your sitemap: `https://your-domain.com/sitemap.xml`
8. Click **Submit URLs** and paste your homepage URL

---

## Step 4: Add to Google (optional)

1. Go to **https://search.google.com/search-console**
2. Add property with your site URL
3. Verify ownership
4. Submit sitemap

---

## Tips for Better Ranking

- It can take days or weeks for search engines to index
- Keep your site live and updated
- Share your URL to get more visits (helps ranking)
- Use clear, relevant content (already done in your meta tags)
