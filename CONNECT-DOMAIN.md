# Connect yourewardcard.com (Namecheap) to your site

You bought the domain on **Namecheap**. To show your site at **yourewardcard.com**, you need to **host the site** somewhere, then **point the domain** to that host.

---

## Step 1: Host your site (if not done yet)

Pick one and upload your project there:

| Host | Free? | What to do |
|------|--------|-------------|
| **Netlify** | Yes | Sign up at [netlify.com](https://www.netlify.com) → **Add site** → **Deploy manually** → drag the folder with `index.html`, `faq/`, `contact/`. Or connect a GitHub repo. |
| **Vercel** | Yes | Sign up at [vercel.com](https://vercel.com) → **Add New Project** → import repo or upload folder. |
| **GitHub Pages** | Yes | Push your project to a GitHub repo → repo **Settings** → **Pages** → Source: **Deploy from branch** → branch: **main** → Save. Site will be at `https://yourusername.github.io/yourewardcard/` until you add a custom domain. |

After this you get a **host URL**, e.g.:
- Netlify: `something.netlify.app`
- Vercel: `something.vercel.app`
- GitHub Pages: `yourusername.github.io/yourewardcard`

---

## Step 2: Add your domain in the host

### On Netlify

1. Open your site → **Domain settings** (or **Set up a custom domain**).
2. Click **Add custom domain** or **Add domain alias**.
3. Enter: **yourewardcard.com**
4. Also add **www.yourewardcard.com** if the host asks for it.
5. Netlify will show either:
   - **Use Netlify DNS** (recommended) → you’ll use Netlify’s nameservers in Namecheap, or  
   - **Use external DNS** → you’ll add A/CNAME records in Namecheap (Netlify shows the values).

### On Vercel

1. Project → **Settings** → **Domains**.
2. Add **yourewardcard.com** and **www.yourewardcard.com**.
3. Vercel shows the DNS records (A and CNAME) to add at your registrar.

### On GitHub Pages

1. Repo → **Settings** → **Pages**.
2. Under **Custom domain**, type **yourewardcard.com** → **Save**.
3. GitHub shows a CNAME target (e.g. `yourusername.github.io`) and tells you to add a CNAME record at your DNS provider.

---

## Step 3: Point Namecheap to the host

Log in to [Namecheap](https://www.namecheap.com) → **Domain List** → click **Manage** next to **yourewardcard.com**.

You have two ways:

---

### Option A: Use the host’s nameservers (easiest)

**If Netlify/Vercel/GitHub gave you nameservers:**

1. In Namecheap, open **Domain** → **Nameservers** (or **Domain Nameserver Setup**).
2. Choose **Custom DNS** (or **Nameservers**).
3. Enter the nameservers from your host, e.g.  
   Netlify often gives:
   - `dns1.p01.nsone.net`
   - `dns2.p01.nsone.net`
   - `dns3.p01.nsone.net`  
   (Your Netlify dashboard shows the exact ones.)
4. **Save** and wait 10–30 minutes (sometimes up to 24–48 hours).

**Result:** The host controls DNS. You don’t add A/CNAME in Namecheap.

---

### Option B: Keep Namecheap DNS and add records

**If the host gave you A and CNAME records:**

1. In Namecheap, open **Advanced DNS** (or **DNS**).
2. Add these (use the **exact** values from your host):

   | Type | Host | Value | TTL |
   |------|------|--------|-----|
   | **A** | `@` | (IP from host, e.g. Netlify: 75.2.60.5) | Automatic |
   | **CNAME** | `www` | (host URL, e.g. `yoursite.netlify.app`) | Automatic |

   Some hosts use a CNAME for `@` (root); if so, follow the host’s instructions (Namecheap supports CNAME flattening for root in some cases, or they’ll tell you to use a redirect).

3. Remove any old A/CNAME for `@` or `www` that conflict.
4. **Save** and wait 10–30 minutes (up to 24–48 hours).

**Result:** Your domain points to the host via A + CNAME.

---

## Step 4: HTTPS (recommended)

- **Netlify / Vercel:** They usually issue a free SSL certificate automatically once the domain is connected.
- **GitHub Pages:** After the custom domain is set and DNS is correct, enable **Enforce HTTPS** in **Settings** → **Pages**.

---

## Step 5: Test

1. Wait at least 10–30 minutes after changing DNS.
2. Open:
   - **https://yourewardcard.com**
   - **https://www.yourewardcard.com** (if you set it up)
   - **https://yourewardcard.com/faq**
   - **https://yourewardcard.com/contact**
3. If it doesn’t load, wait longer or double‑check the nameservers or A/CNAME values (no typos, correct host/value from the host).

---

## Quick reference

| Step | Where | Action |
|------|--------|--------|
| 1 | Netlify/Vercel/GitHub | Upload site, get host URL. |
| 2 | Netlify/Vercel/GitHub | Add custom domain: **yourewardcard.com** (and **www** if needed). |
| 3 | Namecheap | Either set **nameservers** (Option A) or add **A + CNAME** (Option B) as the host says. |
| 4 | Host | Enable HTTPS if needed. |
| 5 | Browser | Test **https://yourewardcard.com** and **/faq**, **/contact**. |

If you tell me which host you use (Netlify, Vercel, or GitHub Pages), I can give the exact values to put in Namecheap for that one.
