# YouRewardCard

Reward card balance checker. Uses the [Check Balance API](https://github.com/lusinenasib/apidoc/wiki) at bot.pc.am.

**Standalone project** – not tied to Vercel or any Git remote. Run locally or deploy to any host you choose.

To disconnect from the previous Git remote (if you still have one): run `git remote remove origin`. To start as a brand‑new repo with no history, delete the `.git` folder and run `git init` when ready.

## Setup

1. Copy `.env.example` to `.env`
2. Add your API token (from your checker BOT settings):
   ```
   API_TOKEN=your_token_here
   ```

## Run the site locally

**Option A – Simple (recommended for testing balance check):**

```bash
cd "c:\Projects\Gift card checker new"
npm run serve
```

Or: `node run.js`

Then open **http://localhost:3000** in your browser. This serves the standalone page and uses your real API (from `.env`) when you click Check Balance.

**Option B – React app (dev mode, mock balance):**

```bash
cd "c:\Projects\Gift card checker new"
npm install
npm run dev
```

Then open **http://localhost:3000**. The React app runs with a mock balance response (no real API call).

## Branding

Site name is **YouRewardCard**. Edit `index.html` or `standalone/index.html` to change the header text.

## Bank API

When you have your bank's API, you'll integrate it into the backend. The form and design are ready.
