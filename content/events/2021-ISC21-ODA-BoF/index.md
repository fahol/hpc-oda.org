---
title: "Guidelines for HPC Data Center Monitoring and Analytics Framework Development"
event: "ISC High Performance 2021 (Digital)"
event_url: https://www.isc-hpc.com/bof-sessions-2021.html

location: "ISC 2021 Digital (virtual conference)"

summary: ISC 2021 BoF calling on the community to move from bespoke monitoring stacks toward shared guidelines and best practices for HPC data-center monitoring frameworks.
abstract: |-
  Improving the efficiency of HPC data centers and their supercomputers is
  driving HPC sites to develop monitoring and analytics frameworks to collect
  and analyze operational data at an ever-increasing scale. It appears that
  every center is developing their own solution, potentially reinventing the
  wheel over and over again. Although there is no one-size-fits-all approach,
  as a community we need to learn from each other.

  This BoF discussed the disparity between current HPC data center monitoring
  and analytics frameworks and why this is a growing concern. It walked
  through the four major components of a holistic framework (data collection,
  message broker, storage, and data analytics / visualization) and used each
  segment to discuss specific design choices, with the aim of launching a
  community-driven effort to develop guidelines and best practices under the
  EE HPC WG umbrella.

date: '2021-06-30T10:00:00Z'
date_end: '2021-06-30T11:00:00Z'
all_day: false

publishDate: '2021-06-30T00:00:00Z'

authors:
  - torsten-wilde
  - thomas-ilsche
  - melissa-romanus
  - keiji-yamamoto
  - woong-shin
  - stefan-ceballos

tags:
  - Birds of a Feather
  - ISC21

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

ISC 2021 was held as a digital-only event from June 24 through July 2, 2021. This BoF ran on June 30 and was led by Torsten Wilde (HPE) and Thomas Ilsche (TU Dresden / ZIH), together with co-organizers from LBNL, ORNL, and RIKEN. The session's premise was that HPC sites are largely reinventing the same monitoring stack, and that distilling the field into a small number of component choices could enable real collaboration.

## Why This Matters

For each core function of a monitoring framework, only a handful of technologies see real use (for example, Kafka, MQTT, and RabbitMQ for message passing), and each site repeats the same detailed analysis on which to pick. The session argued that the community could save significant effort by bundling this analysis into shared guidance and by identifying candidates for de-facto standardization.

## Outcome

This BoF framed the problem that would recur in subsequent ODA sessions at SC22 and SC23: open data, interoperability, and standardization of monitoring data.
