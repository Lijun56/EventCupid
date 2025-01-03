<div align="center"> <a href="eventcupid/assets/favicon.ico"> <img alt="VbenAdmin Logo" width="215" src="eventcupid/assets/favicon.ico"> </a> <br> <br>

[![license](https://img.shields.io/github/license/anncwb/vue-vben-admin.svg)](LICENSE)

<h1>EventCupid</h1>
</div>

Welcome to **EventCupid**, an innovative platform designed to simplify event planning by connecting event organizers with ideal venues and vendors.
## Overview

**EventCupid** streamlines the event planning process by providing tailored recommendations for venues and vendors based on user preferences. The platform enables efficient collaboration, detailed service bundling, real-time price negotiation, and sentiment-based review summaries to enhance decision-making.

---
## Features
### Core Functionalities
- **User Registration & Profile Management**  
  Users can sign up as event organizers, venue managers, or vendors, creating detailed profiles.

- **Event Listings & Vendor Applications**  
  Organizers can post events specifying requirements, while vendors and venues can apply to listed events.

- **Service Bundles**  
  Vendors can collaborate to offer discounted service bundles for organizers.

- **Price Negotiation**  
  A dynamic pricing system allows organizers and vendors to negotiate directly within the platform.

- **Sentiment Analysis & Review Summaries**  
  Machine learning algorithms analyze user feedback to provide concise vendor/venue reviews.
---

## Documentation

For detailed project information, refer to the following documents:

- **[Stage 1: Project Summary & Creative Components](./411_Track1_Stage1.md)**  
  Learn about the platform's vision, unique components, and use cases.

- **[Stage 2: Database Schema & Normalization](./411_Track1_Stage2.md)**  
  Explore the database schema, entity relationships, and BCNF compliance.

- **[Stage 3: Database Implementation & Advanced Queries](./411_Track1_Stage3.md)**  
  View the SQL implementation, advanced query examples, and performance insights.

---

## Install and use

- Get the project code

```bash
git clone https://github.com/Lijun56/EventCupid.git
```

- Installation dependencies

```bash
cd backend
pip3 install -r requirements.txt
cd..
cd eventcupid
npm install
```

- run

```bash
cd backend
python3 run.py
cd..
cd eventcupid
npm run dev
```

- build

```bash
cd eventcupid
npm run build
```