---
title: 'News'
date: 2024-05-19
type: landing

design:
  # Section spacing
  spacing: '5rem'

# Page sections
sections:
  - block: markdown
    content:
      title: 'News'
      text: |-
        
    design:
      background:
        image:
          filename: news.jpg
          size: cover
          position: center
          filters:
            brightness: 0.6
        text_color_light: true

  - block: collection
    content:
      title: Featured
      filters:
        folders:
          - news
        featured_only: true
      count: 4
    design:
      view: article-grid
      fill_image: false
      columns: 1

  - block: collection
    content:
      title: News
      text: ''
      filters:
        folders:
          - news
      count: 100
    design:
      view: article-grid
      fill_image: false
      columns: 2
---
