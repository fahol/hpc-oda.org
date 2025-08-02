---
title: Blog

design:
  # Section spacing
  spacing: '5rem'

# Page sections
sections:
  - block: markdown
    content:
      title: 'Blog'
    design:
      background:
        image:
          filename: brownbag.jpg
          size: cover
          position: center
          filters:
            brightness: 0.6
        text_color_light: true

      columns: 1
  - block: collection
    content:
      title: Featured
      filters:
        folders:
          - blog
        featured_only: true
      count: 4
    design:
      view: article-grid
      fill_image: false
      columns: 1

  - block: collection
    content:
      title: Posts
      text: ''
      filters:
        folders:
          - blog
      count: 100
    design:
      view: article-grid
      fill_image: false
      columns: 2
---
