# Upload checklist – yourewardcard

Use this when deploying to Netlify, GitHub Pages, or your host (e.g. after buying the domain on Namecheap).

## What to upload

Upload the **entire project folder** so the host serves:

- **`index.html`** – home page (Sign In, Getting Started, features, footer)
- **`faq/index.html`** – FAQ page (URL: `/faq` or `/faq/`)
- **`contact/index.html`** – Contact page (URL: `/contact` or `/contact/`)
- **`favicon.ico`** and **`favicon.svg`** – if you have them (optional)
- **`images/`** – only if you add images (e.g. reward cards image)

Do **not** upload:

- `node_modules/`
- `.env` (keep it local; the main site uses the API token in the page for static hosting)
- `.git/` (optional; some hosts use it for auto-deploy)

## Links that must work after upload

| Link            | Target                    |
|-----------------|---------------------------|
| Home / logo     | `/`                       |
| FAQ             | `/faq` or `/faq/`         |
| Contact Us      | `/contact` or `/contact/` |
| Sign In / form  | `/#section1` (same page)  |
| Back to Top     | `#section1` (scroll up)   |
| Policy links    | `/contact` (for now)       |

## API (balance check)

The balance check uses **bot.pc.am** with the token in `index.html`. It works when the site is served over HTTPS. If you move the token to a server later (e.g. `run.js`), use `.env` and do not put the token in the client.

## Optional: Netlify

If using Netlify, drag the folder or connect the repo. Ensure:

- **Publish directory:** `.` (root) or leave default
- **Build command:** leave empty (static site)

`/faq` and `/contact` will work if `faq/index.html` and `contact/index.html` are in the uploaded files.

## Optional: GitHub Pages

- Push the repo and enable Pages (Settings → Pages → branch `main`).
- Upload the same files so the repo contains `index.html`, `faq/index.html`, `contact/index.html`.
- Your site will be at `https://yourusername.github.io/yourewardcard/` (or custom domain if set).

## After connecting your Namecheap domain

In your host (Netlify/Vercel/etc.) add the custom domain (e.g. `yourrewarrdcard.com`). The host will show you either:

- **Nameservers** – set them in Namecheap (Domain List → Manage → Nameservers), or  
- **A/CNAME records** – add them in Namecheap Advanced DNS as the host instructs.

Then wait for DNS (up to 24–48 hours) and test `https://yourrewarrdcard.com`, `https://yourrewarrdcard.com/faq`, `https://yourrewarrdcard.com/contact`.
