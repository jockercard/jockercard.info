# Local Test Guide

## Step 1: Install Node.js (if needed)

If `node` is not installed:
1. Download from https://nodejs.org
2. Run the installer
3. Restart your terminal

Check: `node --version` (should show v18 or higher)

---

## Step 2: Add your API token

1. Open the `.env` file in this folder
2. Replace `your_token_here` with your real token from checker BOT settings
3. Save the file

---

## Step 3: Run the site

Open a terminal in this folder and run:

```bash
node run.js
```

You should see:
```
  yourewardcard
  -------------------------
  Open: http://localhost:3000
```

---

## Step 4: Open in browser

1. Open Chrome or Edge
2. Go to: **http://localhost:3000**
3. Enter card info and click **Check Balance**

---

## Quick start (one command)

```bash
cd "c:\Projects\Gift card checker new"
node run.js
```

Then open **http://localhost:3000** in your browser.

---

## Two ways to run

| Command | What runs | Balance check |
|--------|------------|----------------|
| `node run.js` or `npm run serve` | Standalone HTML (index from `standalone/`) | **Real API** (uses `API_TOKEN` from `.env`) |
| `npm run dev` | React app + Express | **Mock** (fake balance; for UI only) |
