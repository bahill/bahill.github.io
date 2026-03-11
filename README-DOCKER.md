# Docker Dev Environment

This project includes Docker configuration for local development with live preview and automatic reloading.

## Prerequisites

- Docker and Docker Compose installed on your system

## Getting Started

1. **Start the development server:**
   ```bash
   docker-compose up
   ```

   On the first run, Docker will build the image and install all Ruby gems into the `jekyll_gems` named volume (2–3 minutes). Subsequent runs will start instantly.

   NB - if you are using colima and you don't have it as a background service:
   ```bash
   /opt/homebrew/opt/colima/bin/colima start -f
   ```
   or
   ```bash
   colima start
   ```


2. **Access the site:**
   Open your browser and navigate to:
   ```
   http://localhost:4000
   ```

3. **Live reload:**
   The site automatically reloads in your browser whenever you save changes to files. No manual refresh needed.

4. **Stop the development server:**
   Press `Ctrl+C` in the terminal, or run:
   ```bash
   docker-compose down
   ```

## Troubleshooting

- **Port already in use:** If port 4000 or 35729 is already in use, modify the port mappings in `docker-compose.yml`.
- **Gems not updating:** The named volume `jekyll_gems` persists across runs. To reinstall gems, run:
  ```bash
  docker-compose down -v
  docker-compose up
  ```
- **Slow file detection:** On macOS, Docker Desktop's volume mounts may have latency. For faster reload detection, consider using native mounts or increasing polling timeout in Jekyll config.

## Testing GitHub Pages Compatibility

The development environment includes `jekyll-livereload` for live reloading, which is not part of the official `github-pages` gem. To ensure your site builds correctly for GitHub Pages deployment:

1. Build without LiveReload:
   ```bash
   docker-compose exec jekyll bundle exec jekyll build --strict_front_matter
   ```

2. Verify the `_site` folder is generated correctly without errors.

3. Before pushing to GitHub, you can disable LiveReload by removing the `--livereload` flag from the docker-compose.yml or Dockerfile command.
