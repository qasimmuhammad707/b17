# Stars Tech — company website

Static marketing site for **Stars Tech** (Islamabad, B‑17): IT services, dedicated engineering talent, and contact flows that open the visitor’s mail app via `mailto:` links.

## Stack

- [Vite](https://vite.dev/) + [React 19](https://react.dev/) + [TypeScript](https://www.typescriptlang.org/)
- [Tailwind CSS v4](https://tailwindcss.com/) (`@tailwindcss/vite`)

## Prerequisites

- [Node.js](https://nodejs.org/) 20+ (LTS recommended)
- npm (comes with Node)

## Setup

```bash
cd stack-stars-tech
npm install
```

## Scripts

| Command        | Description                          |
| -------------- | ------------------------------------ |
| `npm run dev`  | Local dev server with hot reload     |
| `npm run build`| Typecheck + production build → `dist/` |
| `npm run preview` | Serve the `dist` build locally   |

## Production output

`npm run build` writes static assets to **`dist/`**. Upload that folder to any static host (for example **nginx on Amazon EC2**). Step-by-step notes live in **`EC2-DEPLOY.txt`**.

## Configuration

### Company email (`mailto:`)

In **`src/App.tsx`**, set your real inbox at the top:

```ts
const COMPANY_EMAIL = 'hello@starstech.com'
```

All primary contact buttons use `mailto:` with an encoded subject so the default mail client opens with **To** filled; visitors only add their message (and can edit the subject if they want).

### Branding and copy

- Company name, hero copy, and sections are in **`src/App.tsx`**.
- Page title and meta description are in **`index.html`**.
- Global motion utilities and fonts are in **`src/index.css`**.

## Project layout

```
stack-stars-tech/
├── EC2-DEPLOY.txt   # nginx / EC2 deployment notes
├── index.html
├── public/
├── src/
│   ├── App.tsx      # Main page content & mail helpers
│   ├── index.css    # Tailwind + custom animations
│   └── main.tsx
└── vite.config.ts
```

## License

Private / proprietary — use and deploy as your own company asset.
