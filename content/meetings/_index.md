---
title: Regular Meetings
date: 2024-05-19
type: landing

design:
  # Section spacing
  spacing: '5rem'

# Page sections
sections:
  - block: markdown
    content:
      title: 'Regular Meetings'
      text: |-
        Monthly online gatherings.
    design:
      background:
        image:
          filename: virtual-call.jpg
          size: cover
          position: center
          filters:
            brightness: 0.6
        text_color_light: true

  - block: collection
    content:
      title: Meeting Minutes
      text: ''
      filters:
        folders:
          - meetings
      count: 100
    design:
      view: article-grid
      fill_image: false
      columns: 2
---
