# Editing your Soul of Swords website

This folder contains the actual source from https://github.com/soulofswords/soulofswords.github.io, including its Git history. You can edit it locally. Local edits do not automatically change your public website.

## Preview your changes

Double-click `Preview Website.cmd` in this folder. Keep its terminal window open, and open the local address it prints in your browser. Saving a source file updates the preview. Press Ctrl+C in the terminal to stop it.

Alternatively, open PowerShell and run:

```powershell
Set-Location -LiteralPath 'D:\D drive extra\vtuber\Website'
npm run dev -- --host 127.0.0.1 --open
```

Node.js and npm are required. Dependencies have been installed on this computer. On another computer, run `npm install` first. Don't open the source files directly in a browser; this website needs its preview server.

## Where to change things

Open these files in a text editor such as VS Code. Paths below are relative to this folder.

| What you want to change | File |
| --- | --- |
| Home page introduction and character image | `src/routes/+page.svelte` |
| Full story and Lore heading | `src/routes/lore/+page.svelte` |
| Sakura Companion description, features, download links, and YouTube video IDs | `src/lib/app-showcase.ts` |
| Apps page layout and video embeds | `src/routes/apps/+page.svelte` |
| Website name and tagline at the top | `src/lib/components/header.svelte` |
| Discord, YouTube, Twitch, and X links; copyright name | `src/lib/components/footer.svelte` |
| Home/Lore navigation, overall frame, and shared search/social metadata | `src/routes/+layout.svelte` |
| Home page search description | `src/routes/+page.ts` |
| Lore page title and search description | `src/routes/lore/+page.ts` |
| Colors, fonts, and shared styles | `src/app.css` |
| Public website address used for social images | `src/consts.ts` |
| Web character artwork (original SVG also retained) | `static/soulofswords.webp` |
| Web logo (original SVG also retained) | `static/sos-logo.webp` |
| Browser icon (original SVG also retained) | `static/favicon.png` |
| Social sharing preview image | `static/sos-og.png` |

For a first edit, change a sentence inside a `<p>...</p>` in `src/routes/+page.svelte`, save it, then scroll in the preview to see it. Keep the surrounding tags and script code intact. Much of the text appears as you scroll because it uses visibility-triggered animations.

To change a social link, find its `href="https://..."` in the footer and replace the address between the quotes. To replace artwork, use the same filename and format, or update the image's `src` to match your new file. Files in `static` are served from the website root, so `static/example.png` becomes `/example.png`.

Colors are defined in `:root` for light mode and `.dark` for dark mode. Start with `--primary`, `--secondary`, `--background`, and `--foreground`. Layout is mainly controlled by Tailwind utility classes on the elements in `.svelte` files.

## How the project works

This is a Svelte 5 / SvelteKit site using TypeScript, Tailwind CSS, and Vite. SvelteKit maps `src/routes/+page.svelte` to `/` and `src/routes/lore/+page.svelte` to `/lore`. The shared layout wraps both pages with the header, scroll area, navigation, and footer. It builds static files; no database or content editing dashboard is present in this repository.

`src/lib/components/theme-toggle.svelte` controls the theme button. `src/lib/components/ui` contains reusable interface components; routine text edits do not require changing them.

## Check and build

Run these from this folder after editing:

```powershell
npm run check
npm run build
npm run preview -- --host 127.0.0.1 --open
```

`check` checks Svelte/TypeScript, `build` generates the publishable site in `build`, and `preview` serves that build. Edit `src` and `static`, not the generated `build`, `.svelte-kit`, or `node_modules` folders. `package-lock.json` records the installed dependency versions.

## Publishing later

The repository has a GitHub Pages workflow at `.github/workflows/deploy.yml`, triggered by a push to `main`. Review changes with `git diff`, commit the intended files, and push when you want to publish and have GitHub access configured. Nothing was pushed during local setup.

The deployment workflow uses Node 24, installs the locked dependencies with `npm ci`, and uses an empty base path for this account's `soulofswords.github.io` root site. Home, Lore, and Apps use links that support SvelteKit navigation without a full page reload. YouTube players load after clicking their preview, rather than during the initial page load.

The original README contains the project's media copyright notice.
