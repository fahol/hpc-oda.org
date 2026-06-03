---
title: "Record: A Machine Learning Framework for User-Specific HPC Resource Recommendation"

abstract: |-
  In today’s HPC systems, users tend to overestimate resource requests (wall time, CPU cores, memory) for their batch job submissions to avoid early termination. This habit is rational from the user's perspective, but costly: jobs sit longer in the queue, resources go idle or wasted, and schedulers operate on systematically inflated resource requests. Existing workload managers do not have mechanisms to predict execution time or resource usage before queuing and scheduling batch jobs. 

  This talk presents Record, a machine learning-based resource recommendation framework designed to close that gap. Record utilizes historical workload manager resource usage data and applies a tree-based Random Forest regression model to recommend resource requests at job submission time. With two different job grouping mechanisms (k-means clustering and user-based grouping), Record outperforms the baseline approaches across all target variables and dataset combinations in the offline prediction experiments. Through a real-world deployment on the Boston University Shared Computing Cluster, Record reduced the average waiting time for over 2000 batch job submissions from 17.5 to 1.2 hours. Furthermore, with Record, we decreased average CPU core hour consumption across 4 different case studies without making any changes to the underlying scheduler.

  We will conclude with lessons learned from real-world deployment and a discussion of how Record generalizes to other HPC environments, with implications for scheduling efficiency, energy consumption, and user experience.

# Event start and end times.
date: '2026-06-04T12:00:00Z'
date_end: '2026-06-04T13:00:00Z'
all_day: false

# Schedule page publish date (NOT talk date).
publishDate: '2026-05-29T00:00:00Z'

authors:
  - beste-oztop

tags:
  - TechTalk Presentations

# Is this a featured Event? (true/false)
featured: true

url_code: ''
url_pdf: ''
url_slides: ''
url_video: ''

projects: []
---
