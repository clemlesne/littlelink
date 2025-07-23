# LittleLink

Personal home page built with Hugo.

## Development

### Prerequisites

- [Hugo Extended](https://gohugo.io/installation/) (v0.140.2 or later)

### Local Development

1. Install dependencies:

   ```bash
   make install
   ```

2. Start the development server:

   ```bash
   make dev
   ```

3. Open your browser to `http://localhost:1313`

### Alternative Development Commands

- **Development server for external access**: `make dev-external`
- **Build for development**: `make build-dev` (includes drafts and future posts)
- **Check Hugo configuration**: `make check`
- **Serve built site**: `make serve-build`
- **View all commands**: `make help`

### Building for Production

```bash
make build
```

### NPM Scripts (Alternative)

You can also use npm scripts directly:

```bash
npm run dev    # Start development server
npm run build  # Build for production
```

The built site will be available in the `public/` directory.

## Structure

- `content/` - Page content (Markdown files)
- `data/` - Data files (social links configuration)
- `themes/littlelink/` - Custom Hugo theme
- `static/` - Static assets (copied from original site)
- `hugo.toml` - Hugo configuration

## Configuration

### Social Links

Edit `data/links.yaml` to add/remove/modify social media links.

### Site Information

Edit `hugo.toml` to update site metadata, profile information, and other settings.

## Deployment

The site is automatically deployed to GitHub Pages via GitHub Actions when changes are pushed to the `main` branch. The workflow is defined in `.github/workflows/hugo.yml`.

## License

MIT
