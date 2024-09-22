# Multi-VM Application Deployment with Ansible and Flask

This project demonstrates the deployment of a multi-VM application using Ansible to automate the setup of NGINX as a reverse proxy, a Flask web application, and a PostgreSQL database. The infrastructure consists of three VMs, and the entire setup is automated using Ansible from a control node.
change this project and customize it to your VM's ip's and you own local ip.
i would use AWS for full company structure

## Table of Contents

- [Overview](#overview)
- [VM Setup](#vm-setup)
- [Repository Structure](#repository-structure)
- [Step-by-Step Instructions](#step-by-step-instructions)
  - [1. Clone the Repository](#1-clone-the-repository)
  - [2. Setup PostgreSQL on Ubuntu1](#2-setup-postgresql-on-ubuntu1)
  - [3. Setup Flask Web App on Debian](#3-setup-flask-web-app-on-debian)
  - [4. Run Ansible Playbook for NGINX Setup](#4-run-ansible-playbook-for-nginx-setup)
  - [5. Monitoring with Prometheus and Grafana](#5-monitoring-with-prometheus-and-grafana)
- [Project Summary](#project-summary)

## Overview

This project demonstrates:

- Automated deployment of a Flask web application.
- Ansible automation for setting up NGINX as a reverse proxy.
- Flask web app connecting to a PostgreSQL database.
- Monitoring of the infrastructure using Prometheus and Grafana.

## VM Setup

- **Ubuntu1 (Database)**: `10.100.102.1` (hosts the PostgreSQL database)
- **Debian (Web Server + Proxy)**: `10.100.102.2` (hosts the Flask app and NGINX)
- **Control Node**: Your MacBook (or any system that runs Ansible)

## Repository Structure

```plaintext
project-name/
│
├── ansible/
│   ├── inventory.ini          # Ansible inventory file
│   ├── setup_webapp.yml       # Ansible playbook for setting up NGINX and web app
│
├── webapp/                    # Web application directory
│   ├── app.py                 # Flask web app
│   ├── requirements.txt       # List of dependencies (e.g., Flask, psycopg2)
│
├── db/                        # Database setup info
│   ├── postgresql_setup.sql   # PostgreSQL setup script for Ubuntu1
│
└── README.md                  # Instructions for setting up the project

steps:
step1:
Clone Repository:
git clone https://github.com/yourusername/multi-vm-deployment-project.git
cd multi-vm-deployment-project


step2:
setup Postgresql on ubuntu:
scp db/postgresql_setup.sql ubuntu@192.168.82.4:/home/ubuntu/
use the postgresql file for more details:

step3:
Setup Flask webapp on Debain

step4:
Run Ansbile Playbook for nginx setup

step5:
monitor with grafana and prometeus

