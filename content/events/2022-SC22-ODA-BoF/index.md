---
title: "Operational Data Analytics: Drowning in Data"
event: "SC22 -- The International Conference for High Performance Computing, Networking, Storage, and Analysis"
event_url: https://sc22.supercomputing.org/proceedings/bof/bof_pages/bof178.html

location: "Kay Bailey Hutchison Convention Center"
address:
  city: Dallas
  region: Texas
  country: United States

summary: SC22 BoF on the shift from collecting monitoring data to actually extracting actionable knowledge from it, with a particular focus on AI-based methods and the nuisance-alarm problem.
abstract: |-
  Operational Data Analytics (ODA) provides unique opportunities to analyze,
  understand, and optimize operations of HPC systems. Readily available
  open-source frameworks make the collection of monitoring data from
  different domains of the HPC system (infrastructure, system hardware,
  software, applications) increasingly easy. However, making the data work
  for HPC operations is not straight-forward. AI-based methods seem
  interesting, but which tools and methods are suitable for this type of
  data is not obvious. This BoF aims to bring together practitioners in HPC
  operations to share use cases for ODA, discuss problems, and provide
  feedback.

date: '2022-11-16T17:15:00Z'
date_end: '2022-11-16T18:15:00Z'
all_day: false

publishDate: '2022-11-16T00:00:00Z'

authors:
  - michael-ott
  - melissa-romanus
  - norm-bourassa
  - rachel-palumbo
  - woong-shin
  - jeff-hanson
  - torsten-wilde
  - jim-brandt
  - ben-schwaller
  - natalie-bates

tags:
  - Birds of a Feather
  - SC22

featured: false

image:
  caption: ''
  focal_point: Right

url_code: ''
url_pdf: ''
url_slides: ''
url_video: ''
profile: false
---

## Session Overview

SC22 in Dallas marked a shift in the ODA BoF series. Where earlier sessions focused on building the monitoring stack, "Drowning in Data" turned to the problem that came after: sites had successfully collected vast amounts of telemetry but now struggled to visualize it at useful granularity or to analyze it for actionable knowledge.

The session combined presentations from US, European, and Asian HPC facilities on specific use cases and lessons learned with open audience discussion, leaving roughly half the session for interaction.

## Why This Matters

Most HPC sites were engaged in some form of ODA, whether they called it that or not. Many were overwhelmed by the amount of data they collected and found it difficult to either visualize it in enough detail or find the right tool to extract actionable knowledge. The big-data world offered many methods, but picking the right one required expertise both in data analytics and in the HPC domain.

Threshold-based alarms frequently produced nuisance alerts that overwhelmed operators. Anomaly-based methods held promise for making alarms more relevant. The BoF brought ODA researchers, HPC operators, and data-analytics experts into the same room to share experiences and lessons learned.

## Historical Context

"Drowning in Data" built directly on the SC18 and SC19 BoFs on ODA infrastructure and on the SC21 BoF that introduced the 4x4 ODA conceptual framework. It set up the standardization and interoperability themes that would dominate the following years' sessions.
