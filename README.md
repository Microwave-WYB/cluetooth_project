---
author: Yibo Wei
---
# The Cluetooth Project
$$
\begin{aligned}
	\text{cluetooth} &= \text{clue} + \text{bluetooth} \\
	\text{where clue} &= \begin{cases}
	\text{when: timestamp of discovery} \\
	\text{where: location or network context} \\
	\text{what}\text{device}: \text{device type} \\
	\text{what}\text{vuln}: \text{identified vulnerabilities}
	\end{cases}
\end{aligned}
$$
## Introduction
The Cluetooth Project aims to identify Bluetooth LE devices and explore vulnerabilities.
This repo is a place we document project updates, discoveries, and literature reviews.
### Background
The Cluetooth Project is a continuation of the [Bluetana](https://cns.ucsd.edu/bluetana/) project. Bluetana is an Android application that collects Bluetooth advertisements for the purpose of identifying Bluetooth skimmers. The Cluetooth Project aims to expand on the Bluetana project by focusing on Bluetooth Low Energy (BLE) devices, mapping the devices with Android applications using the advertised characteristics, and exploring vulnerabilities in the devices.
## Data Sources
### BLE Advertisements
### UUIDs found in Android APKs
### Bluetooth SIG Assigned Numbers
We use the [Bluetooth SIG Assigned UUIDs](https://bitbucket.org/bluetooth-SIG/public/src/main/assigned_numbers/uuids/) to better understand the UUID appeared in scanned advertisements. This is especially useful to help us identifying custom services and characteristics to associate BLE devices with Android applications.
## Sub-Projects
### Android BLE Scanner App (Cluetooth)
We implemented the Cluetooth Android app with React Native (well, that might not be a good idea) to collect and upload BLE advertisement data. The app uploads encrypted CSV data to a Google Cloud Storage bucket.
### Android APK UUID Extractor (Python Library)
We built an Android APK UUID Extractor that downloads, decompiles, and extract all UUIDs from the source code. This allow us to map scanned BLE advertisements to specific Android apps.
### Database & Back-end Server
We use a PostgreSQL database with PostGIS plugin as our main storage database.
I implemented a back-end server in Python to provide RESTful API to interact with data.
### Data Source Adapters
Data source adapters are individual Python scripts that uploads data to the database through the web API.
These data sources are originally implemented by the server, but we decide to separate them into sub-projects for easier maintenance and task assignments to participants (so we can have undergraduate students work on the projects without messing with /breaking the server 🤣). This also allows loose-coupling between modules.
### Data Analysis / Visualization
Just like data source adapters, we've separated the data analysis and visualization from the server package for the same reason.
## Contributing to this Repository
This repository provides a `.obsidian_example/` folder for obsidian users. **Copy** this folder to `.obsidian/` (Do not rename!) and open this repo in your Obsidian and you are good to go. Feel free to use your favorite configurations/plugins (they will be added to `.obsidian/` folder which is in `.gitignore`).
You can create a daily journal in the `journals/` folder in the format `YYYY-MM-DD.md`, or simply use Obsidian's built in "daily note" feature (which is configured in the `.obsidian/` folder you copied).
You can commit and push your code with Git, or using the [obsidian-git](https://github.com/denolehov/obsidian-git) plugin.
## Contributors
<!-- TODO: Add contributors -->