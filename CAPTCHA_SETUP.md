# Real Captcha Setup (Cloudflare Turnstile)

To enable a **real captcha** that challenges all users (not the test mode):

1. Go to **https://dash.cloudflare.com** and sign in (free account).
2. In the left sidebar, open **Turnstile**.
3. Click **Add widget**.
4. Enter a name (e.g. "YouRewardCard").
5. Add your domain (e.g. `your-domain.com` or `localhost` for testing)
6. Choose **Managed** (recommended) or **Visible**.
7. Click **Create**.
8. Copy the **Site key**.
9. Open `index.html` and find:
   ```html
   data-sitekey="1x00000000000000000000AA"
   ```
10. Replace `1x00000000000000000000AA` with your Site key.
11. Redeploy or refresh your site so the new key is live.

After this, all users will see a real captcha challenge.
