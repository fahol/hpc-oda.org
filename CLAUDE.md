# HPC-ODA.org Website Project

This is a Hugo-based static website built with HugoBlox (formerly Hugo Academic/Wowchemy) that will be deployed on Cloudflare Pages.

## Project Overview

## Technology Stack
- **Static Site Generator**: Hugo (v0.145.0 - MAXIMUM SUPPORTED VERSION)
  - Access through a proxy script `./hugo.sh` that uses an isolated pinned hugo binary
- **Framework**: Hugo v0.142.0 with HugoBlox theme
- **Theme**: Hugo Landing Page Theme (HugoBlox)
- **Deployment**: Cloudflare Pages (not Netlify)
- **Module System**: Hugo modules with Go 1.19
- **Deployment**: Cloudflare Pages
- **Version Control**: Private GitHub repository (fahol/hpc-oda.org)
- **Hugo**: Static site generator
- **HugoBlox**: No-code website builder and theme framework
- **Tailwind CSS**: Utility-first CSS framework
- **Markdown**: Content format for pages and blog posts
- **YAML**: Configuration format

## Deployment Architecture
- **Repository**: `fahol/hpc-oda.org`
- **Branches**:
  - `develop` → Staging environment
  - `main` → Production environment
- **Staging**: Cloudflare Pages monitors `develop` branch
- **Production**: Cloudflare Pages monitors `main` branch
- **Preview URL (develop branch)**: https://develop.hpc-oda.pages.dev
- **Live URL (main branch)**: https://hpc-oda.org
- **Deployment Method**: Manual push to respective branches (no CI/CD)

## Project Structure

```
hpc-oda/
├── assets/              # Static assets (images, icons, SVGs)
├── config/_default/     # Hugo configuration files
│   ├── hugo.yaml       # Main Hugo config
│   ├── params.yaml     # Site parameters
│   ├── menus.yaml      # Navigation menus
│   ├── languages.yaml  # Language settings
│   └── module.yaml     # Hugo modules config
├── content/            # Markdown content files
│   ├── _index.md      # Homepage content
│   ├── authors/       # Author profiles
│   └── blog/          # Blog posts
├── hugo-blox/         # HugoBlox theme components
├── layouts/           # Custom layouts (if any)
├── public/            # Generated site (gitignored)
└── go.mod            # Hugo modules dependencies
```

## Build Commands

### Local Development
```bash
./hugo.sh server -D
```

### Production Build (Cloudflare Pages)
```bash
./hugo.sh version && rm -rf public/* && hugo --cleanDestinationDir
```

### Clean Build
```bash
./hugo.sh --gc --minify
```

## Configuration

### Key Configuration Files

1. **config/_default/hugo.yaml**
   - Site title, baseURL, language settings
   - Build configuration
   - Taxonomy settings
   - Output formats

2. **config/_default/params.yaml**
   - Appearance settings (theme, colors)
   - SEO configuration
   - Header/footer settings
   - Analytics configuration

3. **config/_default/module.yaml**
   - HugoBlox module imports
   - Mount configurations for theme components

## Content Management

### Page Types

1. **Landing Page Sections** (content/_index.md)
   - Hero section
   - Stats blocks
   - Features grid
   - CTA sections
   - Testimonials

2. **Blog Posts** (content/blog/*)
   - Markdown files with frontmatter
   - Support for featured images
   - Categories and tags
   - Author attribution

### Frontmatter Structure

```yaml
---
title: "Page Title"
date: 2024-01-01
type: landing  # or 'page', 'post'
draft: false
---
```

## HugoBlox Blocks

The site uses HugoBlox's block-based system for building pages:

- `hero`: Landing page hero section
- `stats`: Statistics display
- `features`: Feature grid
- `cta-image-paragraph`: Call-to-action with image
- `testimonials`: Customer testimonials
- `cta-card`: Call-to-action card

## Deployment Notes

### Cloudflare Pages Settings

- **Build command**: `./hugo.sh version && rm -rf public/* && hugo --cleanDestinationDir`
- **Build output directory**: `public`
- **Hugo version**: 0.145.0
- **Environment variables**: Set as needed

### Branch Deployments

- Push to `develop` → Triggers staging deployment
- Push to `main` → Triggers production deployment

## Important Notes

1. **Remove Netlify References**: The project contains a `netlify.toml` file which should be removed or ignored since deployment is via Cloudflare Pages.

2. **BaseURL Configuration**: Update `baseURL` in `config/_default/hugo.yaml` to the actual domain before production deployment.

3. **Hugo Version**: Ensure Cloudflare Pages uses Hugo v0.142.0 to match local development.

4. **Module Updates**: Run `hugo mod get -u` to update HugoBlox modules.

5. **Asset Pipeline**: Hugo processes images through its asset pipeline for optimization. Original images go in `assets/media/`.

## Common Tasks

### Adding a New Blog Post

```bash
./hugo.sh new content/blog/my-new-post/index.md
```

### Updating Site Configuration

Edit files in `config/_default/` directory.

### Changing Theme Colors

Update `appearance.color` in `config/_default/params.yaml`.

### Adding Navigation Items

Edit `config/_default/menus.yaml`.

## Troubleshooting

1. **Build Errors**: Check Hugo version compatibility
2. **Missing Modules**: Run `./hugo.sh mod download`
3. **Image Processing**: Ensure images are in `assets/media/`
4. **Deployment Issues**: Verify Cloudflare Pages build settings

## Resources

- [Hugo Documentation](https://gohugo.io/documentation/)
- [HugoBlox Documentation](https://docs.hugoblox.com/)
- [Cloudflare Pages Docs](https://developers.cloudflare.com/pages/)
