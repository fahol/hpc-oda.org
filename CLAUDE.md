# HPC-ODA.org Website Project

This is the official website for the EEHPCWG Operational Data Analytics Community (HPC ODA), built with Hugo and HugoBlox theme framework.

## Project Overview

The HPC-ODA.org website serves as the central hub for the Energy Efficient HPC Working Group's Operational Data Analytics Community. The site provides information about the community's mission, activities, resources, and events focused on improving HPC operations through data analytics.

**Current Status**: The website is in active development with the homepage structure complete and content sections being populated.

## Technology Stack
- **Static Site Generator**: Hugo (v0.145.0)
  - Access through a proxy script `./hugo.sh` that uses an isolated pinned hugo binary
- **Theme**: Hugo Landing Page Theme (HugoBlox)
- **Module System**: Hugo modules with Go 1.19
- **CSS Framework**: Tailwind CSS (integrated via HugoBlox)
- **Content Format**: Markdown with YAML frontmatter
- **Configuration**: YAML format

## Deployment Architecture
- **Repository**: `fahol/hpc-oda.org` (private GitHub repository)
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
├── assets/              # Static assets
│   └── media/          # Images, icons, background SVGs
│       ├── bg-fabio.jpg       # Hero section background
│       ├── bg-step.svg        # Alternative background
│       ├── brownbag.jpg       # Brownbag section image
│       ├── events.jpg         # Events section image
│       ├── news.jpg           # News section image
│       ├── show-and-tell.jpg  # Show and tell image
│       ├── virtual-call.jpg   # Virtual meeting image
│       └── icons/             # Custom icons
├── config/_default/     # Hugo configuration files
│   ├── hugo.yaml       # Main Hugo config (title, baseURL, build settings)
│   ├── params.yaml     # Site parameters (appearance, SEO, header/footer)
│   ├── menus.yaml      # Navigation menu structure
│   ├── languages.yaml  # Language settings
│   └── module.yaml     # Hugo modules config
├── content/            # Markdown content files
│   ├── _index.md      # Homepage with landing page blocks
│   ├── authors/       # Author profiles
│   │   ├── admin/     # Default admin profile
│   │   ├── michael-ott/
│   │   ├── natalie-bates/
│   │   ├── woong-shin/
│   │   └── template/  # Template for new authors
│   ├── blog/          # Blog posts (migrated from examples)
│   ├── brownbag/      # Brownbag series content
│   │   └── 2025-09-01-Brownbag-testrun/
│   ├── events/        # Events content
│   │   └── 2024-SC24-ODA-BoF/
│   ├── meetings/      # Regular meetings info
│   │   └── 2025-05-22.md
│   ├── news/          # News updates
│   │   └── 2025-08-02/
│   └── publications/  # Publications
│       ├── netti-conceptual-2021/
│       └── ott-global-2020/
├── content-examples/   # Example content (moved from content/)
├── hugo-blox/         # HugoBlox theme components
│   └── blox/          # Custom blocks (community and all-access)
├── layouts/           # Custom layouts
│   ├── _default/
│   │   └── single.html
│   └── partials/
│       ├── blox/
│       │   └── markdown.html
│       └── hooks/
│           └── head-end/
│               └── github-button.html
├── public/            # Generated site (gitignored)
├── resources/         # Hugo resource cache
├── go.mod            # Hugo modules dependencies
├── go.sum            # Module checksums
├── hugo.sh           # Hugo proxy script
├── hugo_stats.json   # Hugo build statistics
├── hugoblox.yaml     # HugoBlox configuration
└── theme.toml        # Theme metadata
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

### Update Hugo Modules
```bash
./hugo.sh mod get -u
./hugo.sh mod download
```

## Configuration

### Key Configuration Files

1. **config/_default/hugo.yaml**
   - Site title: "HPC Operational Data Analytics"
   - BaseURL: https://hpc-oda.org/
   - Build settings with writeStats enabled
   - Taxonomy configuration (tags, categories, authors)
   - Output formats include headers and redirects for Cloudflare

2. **config/_default/params.yaml**
   - Appearance: Light mode with indigo color theme
   - SEO description and metadata
   - Header configuration with theme chooser enabled
   - Footer copyright notice

3. **config/_default/module.yaml**
   - Imports HugoBlox modules (netlify plugin and tailwind)
   - Mounts custom blox components from hugo-blox directory

4. **config/_default/menus.yaml**
   - Multi-level navigation structure
   - Main sections: Home, About, Mission, News, Activities, Resources
   - Dropdown menus for Activities and Resources

## Content Management

### Page Types

1. **Landing Pages** (type: landing)
   - Homepage (`content/_index.md`)
   - Events page (`content/events/_index.md`)
   - Use block-based layout system

2. **Collection Pages**
   - Blog, News, Publications, Events
   - Automatic listing with filtering capabilities

3. **Single Pages**
   - About, Meetings, Brownbag
   - Standard markdown content

### Content Sections

- **Blog**: Technical articles and tutorials (currently populated with example content)
- **News**: Community updates and announcements
  - Latest: "Site Open is Soon!" (2025-08-02)
- **Events**: Conference meetings and gatherings
  - SC24 ODA BoF event page created
- **Publications**: Research papers and presentations
  - "A Conceptual Architecture for Control and Observation of HPC Systems" (Netti et al., 2021)
  - "A Global Survey of Architectural Features of the HPC Data Center Monitoring Systems" (Ott et al., 2020)
- **Brownbag**: Presentation series information
  - Test run scheduled for 2025-09-01
- **Meetings**: Regular community meeting details
  - Meeting notes template for 2025-05-22

### Frontmatter Structure

```yaml
---
title: "Page Title"
date: 2024-01-01
type: landing  # or leave blank for regular pages
draft: false
authors: ["admin"]  # for blog posts
tags: ["tag1", "tag2"]
categories: ["category1"]
featured: true  # for featured content
---
```

## HugoBlox Blocks

The site actively uses these HugoBlox blocks:

- `hero`: Homepage hero section with background image (bg-fabio.jpg)
  - Title: "The EEHPCWG Operational Data Analytics Community (HPC ODA)"
  - Tagline: "Cannot improve if we cannot measure!"
  - Primary action: Brownbag Presentations
  - Secondary action: News
- `markdown`: Welcome and Contact sections
- `features`: Mission section with 6 icon-based goals
  - Global State-of-Practice
  - Knowledge Sharing
  - Next-Gen Infrastructure
  - System Deployment
  - Standardization Framework
  - Data Convergence
- `cta-image-paragraph`: Activities section with 3 image cards
  - Monthly Call
  - Brownbag Series
  - Events
- `collection`: Dynamic content listings (news, events, publications)

Additional blocks available but not currently used:
- `stats`: Statistics display (commented out)
- `testimonials`: Customer testimonials (commented out)
- `cta-card`: Call-to-action card (commented out)

## Navigation Structure

```
Home
├── About
├── Mission (anchor to homepage section)
├── News
├── Activities
│   ├── Regular Meetings
│   ├── Events
│   └── Brownbag
└── Resources
    ├── Blog
    └── Publications
```

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

1. **BaseURL**: Already correctly set to https://hpc-oda.org/ in hugo.yaml

2. **Hugo Version**: The project uses a proxy script `hugo.sh` to ensure consistent Hugo version (0.145.0)

3. **Netlify References**: The module.yaml imports a netlify plugin, but this doesn't affect Cloudflare deployment

4. **Asset Pipeline**: 
   - Images should be placed in `assets/media/`
   - Hugo automatically processes and optimizes images
   - Generated resources are cached in `resources/_gen/`
   - Current images include hero backgrounds, activity images, and author avatars

5. **Community Content**: 
   - The site focuses on HPC Operational Data Analytics
   - Content includes technical resources, community events, and knowledge sharing
   - Main contacts: Michael Ott (Leibniz Supercomputing Center) and Natalie Bates (EE HPC WG)

6. **Recent Changes**:
   - Blog examples moved to `content-examples/` directory
   - Homepage structure refined with hero section and mission blocks
   - Publications section populated with initial papers
   - Navigation menu restructured with Activities and Resources dropdowns
   - Custom layouts added for partials and single page templates

## Common Tasks

### Adding a New Blog Post
```bash
./hugo.sh new content/blog/my-new-post/index.md
```

### Adding a New Event
```bash
./hugo.sh new content/events/2024-event-name/index.md
```

### Adding a New Publication
```bash
./hugo.sh new content/publications/paper-name/index.md
```

### Updating Site Configuration
Edit files in `config/_default/` directory.

### Changing Theme Colors
Update `appearance.color` in `config/_default/params.yaml`. Available colors are defined by HugoBlox theme.

### Adding Navigation Items
Edit `config/_default/menus.yaml`. Supports multi-level menus with `parent` property.

## Development Workflow

1. Create content in appropriate `content/` subdirectory
2. Test locally with `./hugo.sh server -D`
3. Commit changes to git
4. Push to `develop` branch for staging preview
5. After verification, merge to `main` for production deployment

## Troubleshooting

1. **Build Errors**: Check Hugo version with `./hugo.sh version`
2. **Missing Modules**: Run `./hugo.sh mod download`
3. **Image Processing**: Ensure images are in `assets/media/`
4. **Navigation Issues**: Verify menu structure in `menus.yaml`
5. **Block Rendering**: Check block names match HugoBlox documentation

## Resources

- [Hugo Documentation](https://gohugo.io/documentation/)
- [HugoBlox Documentation](https://docs.hugoblox.com/)
- [HugoBlox Landing Page Theme](https://github.com/HugoBlox/theme-landing-page)
- [Cloudflare Pages Docs](https://developers.cloudflare.com/pages/)

## Community Information

This website supports the EEHPCWG (Energy Efficient HPC Working Group) Operational Data Analytics Community with the following mission:
- Providing a global view of ODA state-of-practice
- Sharing experience and lessons learned
- Informing next-generation monitoring infrastructure
- Supporting ODA system deployment at HPC centers
- Building standardization frameworks
- Working toward operational data convergence

### Key Activities
- **Monthly Virtual Meetings**: Regular community calls via Zoom
- **Brownbag Series**: Invited presentations from global experts covering use cases, experiences, best practices, operations, data engineering, AI, and machine learning
- **Events**: Community gatherings at major HPC venues for cutting-edge discussions

# important-instruction-reminders
Do what has been asked; nothing more, nothing less.
NEVER create files unless they're absolutely necessary for achieving your goal.
ALWAYS prefer editing an existing file to creating a new one.
NEVER proactively create documentation files (*.md) or README files. Only create documentation files if explicitly requested by the User.