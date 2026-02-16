# Google Search Console – Verify via DNS (Namecheap)

You chose **Domain name provider** verification. Add this **TXT record** in Namecheap, then click **Verify** in Search Console.

---

## 1. In Namecheap

1. Sign in at **https://www.namecheap.com**
2. Open **Domain List** → click **Manage** next to **yourrewarrdcard.com**
3. Go to the **Advanced DNS** tab

---

## 2. Add the TXT record

1. Click **Add New Record**
2. Set:
   - **Type:** `TXT Record`
   - **Host:** `@` (means yourrewarrdcard.com)
   - **Value:**  
     `google-site-verification=k6Cjgd-mnwDE7akhFQ4CI2ShauDBKFi3qBX4zjfIDVw`
   - **TTL:** Automatic (or 300)
3. Save (green checkmark)

---

## 3. In Google Search Console

1. Wait a few minutes (DNS can take up to 24–48 hours; often it’s quick)
2. Click **Verify**
3. If it says “Verification failed”, wait longer and try again later

---

## Note

- **Domain** verification (this TXT record) proves you own **yourrewarrdcard.com** and all its subdomains (e.g. www).
- The **HTML meta tag** in your site is for **URL prefix** verification (a single URL like https://www.yourrewarrdcard.com). You can use either; the TXT record is what Google is asking for when you chose “Domain name provider”.
