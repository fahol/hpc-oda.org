---
title: Brownbag Series
date: 2024-05-19
type: landing

design:
  # Section spacing
  spacing: '5rem'

# Page sections
sections:
  - block: collection
    content:
      title: Featured
      filters:
        folders:
          - brownbag
        featured_only: true
      count: 4
    design:
      view: article-grid
      fill_image: false
      columns: 1

  - block: collection
    content:
      title: Presentations
      text: ''
      filters:
        folders:
          - brownbag
      count: 100
    design:
      view: article-grid
      fill_image: false
      columns: 2
---
