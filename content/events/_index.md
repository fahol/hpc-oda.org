---
title: 'Events'
date: 2024-05-19
type: landing

design:
  # Section spacing
  spacing: '5rem'

# Page sections
sections:
  # Banner
  - block: markdown
    content:
      title: 'Events'
      text: |-
        Operational Data Analytics community gatherings.
        Cutting edge discussions with the community
    design:
      background:
        image:
          filename: events.jpg
          size: cover
          position: center
          filters:
            brightness: 0.6
        text_color_light: true
        
  # Upcoming (featured)
  - block: collection
    content:
      title: Upcoming
      filters:
        folders:
          - events
        featured_only: true
      count: 4
    design:
      view: article-grid
      fill_image: false
      columns: 2

  # Past
  - block: collection
    content:
      title: Past Events
      text: ''
      filters:
        folders:
          - events
      count: 100
    design:
      view: article-grid
      fill_image: false
      columns: 3
---
