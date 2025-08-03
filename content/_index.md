---
title: 'Home'
date: 2023-10-24
type: landing

design:
  # Default section spacing
  spacing: "6rem"
sections:
  - block: hero
    content:
      title: |-
        The EE HPC WG <br> Operational Data Analytics Community <br> (HPC ODA)
      text: Cannot improve if we cannot measure!
      primary_action:
        text: Brownbag Presentations
        url: brownbag/
        icon: person-simple-walk
      secondary_action:
        text: News!
        url: news/
      announcement:
        text: "Site Open is Soon!"
        link:
          text: "Read more"
          url: news/2025-08-02
    design:
      spacing:
        padding: [0, 0, 0, 0]
        margin: [0, 0, 0, 0]
      # For full-screen, add `min-h-screen` below
      css_class: "dark"
      background:
        color: "navy"
        image:
          # Add your image background to `assets/media/`.
          filename: bg-fabio.jpg
          filters:
            brightness: 0.4

  - block: markdown
    id: about
    design:
      columns: '1'
    content:
      title: 'Welcome to the HPC ODA Community'
      subtitle: ''
      text: |-
        The Operational Data Analytics (ODA) Community brings together system
        administrators, researchers, data scientists, and HPC professionals from
        around the world who share a common goal: transforming how we understand,
        monitor, and optimize high-performance computing environments. Whether you're
        just beginning your journey with operational data or you're a seasoned expert
        looking to share insights, our community provides a collaborative space to
        learn, innovate, and advance the field together.

        As HPC systems grow increasingly complex and critical to scientific discovery,
        the need for sophisticated operational insights has never been greater. Our
        community recognizes that effective data analytics isn't just about collecting
        metrics—it's about building sustainable practices, sharing hard-won knowledge,
        and creating tools that benefit the entire HPC ecosystem. Through open
        collaboration and shared expertise, we're working to establish best practices
        that will shape the future of HPC operations worldwide.

        {{< youtube WSfup7Y-n8o >}}

  #
  # Statistics block
  #

#  - block: stats
#    content:
#      items:
#        - statistic: "1M+"
#          description: |
#            Websites built  
#            with Hugo Blox
#        - statistic: "10k+"
#          description: |
#            GitHub stars  
#            since 2016
#        - statistic: "3k+"
#          description: |
#            Discord community  
#            for support
#    design:
#      # Section background color (CSS class)
#      css_class: "bg-gray-100 dark:bg-gray-900"
#      # Reduce spacing
#      spacing:
#        padding: ["1rem", 0, "1rem", 0]


  #
  # The "Mission" block
  #
  - block: features
    id: mission
    content:
      title: Mission
      text: Our Team Mission & Goals
      items:
        - name: Global State-of-Practice
          icon: globe-alt
          description: Providing a global view of the state-of-the-practice in ODA
        - name: Knowledge Sharing
          icon: academic-cap
          description: Sharing experience & lessons learned with ODA
        - name: Next-Gen Infrastructure
          icon: server-stack
          description: Informing next-generation data collection & monitoring infrastructure for HPC data centers
        - name: System Deployment
          icon: rocket-launch
          description: Supporting the development & deployment of ODA systems at more HPC centers
        - name: Standardization Framework
          icon: puzzle-piece
          description: Building a framework for standardization and sharing of dashboards across sites in a data-agnostic manner
        - name: Data Convergence
          icon: arrow-path
          description: Ideally converging on operational data standardization

  #
  # Project activities
  #
  - block: cta-image-paragraph
    id: activities
    content:
      items:
        - title: Monthly Call
          text: Join our large community on Zoom
          feature_icon: bolt
          features:
            - "Monthly virtual meeting"
            - "Keeping in touch!"
            - "Reach out!"
          image: virtual-call.jpg
          button:
            text: Reach out!
            url: /#contact

        - title: Brownbag Series
          text: Brownbag presentations from the community
          feature_icon: check
          features:
            - "Invited presentation from global experts"
            - "Use cases, experiences, best practices, Q&A and discussion"
            - "Operations, Data engineering, AI, Machine Learning"
          image: show-and-tell.jpg
          button:
            text: Brownbag Series
            url: brownbag/

        - title: Events
          text: Community gatherings in major HPC venues
          feature_icon: bolt
          features:
            - "Operational Data Analytics community gatherings"
            - "Cutting edge discussions with the community"
            - "See you there!"
          image: events.jpg
          button:
            text: Events
            url: events/

    design:
      # Section background color (CSS class)
      css_class: "bg-gray-100 dark:bg-gray-900"

  #
  # Testimonials
  #
#  - block: testimonials
#    content:
#      title: ""
#      text: ""
#      items:
#        - name: "Hugo Smith"
#          role: "Marketing Executive at X"
#          # Upload image to `assets/media/` and reference the filename here
#          image: "testimonial-1.jpg"
#          text: "Awesome, so easy to use and saved me so much work with the swappable pre-designed sections!"
#    design:
#      spacing:
#        # Reduce bottom spacing so the testimonial appears vertically centered between sections
#        padding: ["6rem", 0, 0, 0]

#  - block: cta-card
#    content:
#      title: Build your future-proof website
#      text: As easy as 1, 2, 3!
#      button:
#        text: Get Started
#        url: https://hugoblox.com/templates/
#    design:
#      card:
#        # Card background color (CSS class)
#        css_class: "bg-primary-700"
#        css_style: ""

  - block: markdown
    id: contact
    design:
      columns: '1'
    content:
      title: 'Contact Us'
      subtitle: ''
      text: |-
        **Michael Ott** (Lieniz Supercomputing Center) <br>
        **Natalie Bates** (EE HPC WG)
---
