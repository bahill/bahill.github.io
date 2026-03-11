## Plan: Docker Dev Environment for Jekyll Site (Updated)

Create a Docker-based dev environment with gem caching via named volume and LiveReload integration for hot-refresh on file changes. The Dockerfile will use Ruby 3.1+, docker-compose.yml will mount the Jekyll gem directory and code, and the Jekyll serve command will include LiveReload.

### Steps

1. Create a [Dockerfile](Dockerfile) with Ruby 3.1+, install dependencies from Gemfile.lock, expose ports 4000 (Jekyll) and 35729 (LiveReload), and set `jekyll serve --livereload` as the entrypoint.

2. Create a [docker-compose.yml](docker-compose.yml) with:
   - Service mounting project code as a volume
   - Named volume `jekyll_gems` for `/usr/local/bundle` (gem persistence across rebuilds)
   - Port mappings: 4000 (site) and 35729 (LiveReload)
   - Environment variables: `JEKYLL_ENV=development`

3. Create a [.dockerignore](.dockerignore) excluding .git, _site, .sass-cache, .jekyll-cache, node_modules, Gemfile.lock (to use container's locked version).

4. Create a [README-DOCKER.md](README-DOCKER.md) documenting how to start the dev environment (`docker-compose up`), access the site at `http://localhost:4000`, and that LiveReload will auto-refresh the browser on file changes.

5. (Optional) Add `gem 'jekyll-livereload'` to the Gemfile's development group if not already present, and rebuild the Docker image.

### Further Considerations

1. **Initial build time:** First run will take 2–3 minutes to install gems into the named volume; subsequent runs will be instant. Is this acceptable?

2. **GitHub Pages compatibility:** The setup uses `jekyll-livereload` (not part of github-pages gem). Do you want to verify locally that the build still works without it before deploying to GitHub Pages?
yes, I will test the build without `jekyll-livereload` to ensure GitHub Pages compatibility before deploying.
