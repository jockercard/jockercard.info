# Fix "Sitemap can be read, but has errors – URL not allowed"

## 1. Make sure the sitemap is live and correct

1. **Push your latest code** to GitHub so Vercel redeploys (run `deploy-to-github.bat` or `git push`).
2. After the deploy finishes, open this URL in your browser (or incognito):  
   **https://www.yourrewarrdcard.com/sitemap.xml**
3. Check that **every** `<loc>` URL uses **www.yourrewarrdcard.com** (with two “r”s: **rewarrd**).  
   You must **not** see **yourewardcard.com** (one “r”: reward).

If you still see **yourewardcard.com** in that page, the deploy didn’t update the sitemap (wrong branch, wrong project, or cache). Fix that first.

---

## 2. Use the correct property in Google Search Console

“URL not allowed” means the sitemap’s URLs don’t belong to the property where you added the sitemap.

- Your **real site** is: **yourrewarrdcard.com** (two “r”s).
- You must add the sitemap in the property for **yourrewarrdcard.com** (or **www.yourrewarrdcard.com**), **not** in a property for **yourewardcard.com** (one “r”).

**Do this:**

1. In Search Console, check the **property selector** at the top (or the left menu).  
   Make sure you’re in the property for **yourrewarrdcard.com** (the one you verified with the TXT record).
2. If you only have a property for **yourewardcard.com** (one “r”), add a **new property** for **https://www.yourrewarrdcard.com** (or **https://yourrewarrdcard.com**), verify it, then submit the sitemap there.
3. In the **correct** property (**yourrewarrdcard.com**), go to **Sitemaps**.
4. **Remove** the old sitemap if it’s there (the one showing errors).
5. **Add** the sitemap again with exactly:  
   `https://www.yourrewarrdcard.com/sitemap.xml`  
   Then click **Submit**.

---

## 3. Let Google re-fetch the sitemap

After you re-add the sitemap, Google will fetch it again. The “URL not allowed” errors should disappear once:

- The live sitemap at **https://www.yourrewarrdcard.com/sitemap.xml** contains only **www.yourrewarrdcard.com** URLs, and  
- The sitemap is submitted in the **yourrewarrdcard.com** property (not yourewardcard.com).

If errors remain after 24–48 hours, open the sitemap URL in incognito again and double-check that no **yourewardcard.com** URLs appear.
