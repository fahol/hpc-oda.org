---
title: 'Events'
date: 2024-05-19
type: landing

design:
  # Section spacing
  spacing: '5rem'

# Page sections
sections:
  - block: collection
    content:
      title: Featured Events
      filters:
        folders:
          - events
        featured_only: true
      count: 4
    design:
      view: article-grid
      fill_image: false
      columns: 1

  - block: collection
    content:
      title: Events 
      text: ''
      filters:
        folders:
          - events
      count: 100
    design:
      view: article-grid
      fill_image: false
      columns: 2
---
