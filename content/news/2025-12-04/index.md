---
title: "SC25 ODA Birds of a Feather: Mind the Gap, Recap"
date: 2025-12-04T12:00:00Z
draft: false
authors:
  - michael-ott
  - woong-shin
  - natalie-bates
featured: false
tags:
  - Birds of a Feather
  - SC25
---

The HPC Operational Data Analytics community held its annual Birds of a Feather session at [SC25](https://sc25.supercomputing.org/) in St. Louis, Missouri on November 20, 2025. This year's session, **"Operational Data Analytics: Mind the Gap,"** brought together approximately 34 attendees (29 of whom engaged via Mentimeter) to explore a central question: how can we make operational data accessible to the stakeholders who need it most, while respecting privacy, security, and legal requirements?

The audience skewed heavily toward the HPC operations community: 17 participants identified as Systems Operations, 11 as Researchers, and only 1 as an HPC User. That distribution itself highlighted the gap the session set out to address.

The session featured presentations from **Wolfgang Frings** (Jülich Supercomputing Centre) on [LLView](https://www.fz-juelich.de/ias/jsc/EN/Expertise/Support/Software/LLview/llview_node.html), a job-centric monitoring tool that gives HPC users role-based access to operational data about their own jobs, and **Terry Jones** (Oak Ridge National Laboratory) on the [ExaDigiT](https://exadigit.github.io/) project, covering application fingerprinting and the practical challenges of making operational data usable for research.

### What the data shows

The interactive Mentimeter discussion, organized across three stakeholder perspectives (data center, HPC users, and researchers), surfaced several striking findings:

- **Top ODA use case:** Performance Monitoring and Optimization (4.3/5 priority score), followed by User Behavior and Resource Utilization Analysis (3.8) and Job Scheduling Optimization (3.7).
- **Data access gap:** Operational data within HPC centers is mostly accessible to Operations (20) and Management (16). HPC Users and Researchers each received access from only about half as many sites (9 and 10 respectively).
- **HPC user gap:** Users rated telemetry data as highly valuable for their work (4.3/5) but gave themselves only 2.9/5 for having the capability to actually use it.
- **Researcher crisis:** Researchers rated HPC center datasets as crucial to their work (4.7/5), but rated current public dataset availability at just 2.3/5 and quality satisfaction at a striking 1.6/5. Most-cited missing data: high-fidelity telemetry, error labels, and application-specific resource utilization metrics.
- **Community-wide gaps** (word cloud): knowledge sharing and data standardization dominated responses, with interoperability, standard schema, and open telemetry datasets also prominent.

### Why sites don't share data

Systems operators cited a mix of institutional policy, security and permissions constraints, concerns about misinterpretation, leadership hesitation about how data might reflect on the center, and fragmented ownership (different groups controlling different pieces of relevant data, with no single team empowered to share it all).

The free-form discussion continued at Marriott St. Louis Grand (HPE's Landmark 3 Meeting Room) following the session, with questions ranging from the feasibility of standardization to real-world ML production benefit on HPC operations data.

This BoF is part of a long-running series organized by the [EEHPCWG](https://eehpcwg.llnl.gov/) Operational Data Analytics team. The community debrief took place on December 4, 2025 and the outcomes are informing the planning of the [HPC-ODA 2026 Workshop](/workshop/) at SC26.
