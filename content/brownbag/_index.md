---
title: Brownbag Series
date: 2024-05-19
type: landing

design:
  # Section spacing
  spacing: '5rem'

# Page sections
sections:
  - block: markdown
    content:
      title: 'Brownbag Presentations'
      text: |-
        Invited presentations from global experts <br>
        Use cases, experiences, best practices, Q&A and discussions
    design:
      background:
        image:
          filename: brownbag.jpg
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
          - brownbag
        featured_only: true
      count: 4
    design:
      view: article-grid
      fill_image: false
      columns: 1

  # Past presentations
  - block: collection
    content:
      title: Past Presentations
      text: ''
      filters:
        folders:
          - brownbag
      count: 100
    design:
      view: article-grid
      fill_image: false
      columns: 3
---
