# Containerized Web Application on AWS ECS Fargate with Terraform

## Overview
This project demonstrates modern cloud-native container orchestration by deploying a custom Dockerized web application to **Amazon Elastic Container Service (ECS)** using **AWS Fargate** (serverless container engine). All infrastructure is provisioned and managed declaratively using **Terraform** as Infrastructure as Code (IaC).

---

## Architecture & Components

- **Amazon Elastic Container Registry (ECR)**: A secure, private registry hosting the custom Docker image.
- **Amazon ECS Cluster & Fargate Service**: Manages container instances serverlessly without requiring EC2 instance management.
- **ECS Task Definition**: Configures resource sizing (CPU/Memory), networking mode (`awsvpc`), and links the container image from ECR.
- **IAM Execution Role**: Grants the ECS task permissions to pull images from ECR and stream logs to CloudWatch.
- **Networking & Security Group**: Leverages the default AWS VPC and subnets, configuring an inbound security group rule on port 80 to allow public web access.

---

## Project Directory Structure

```text
aws-ecs-terraform-fargate/
├── .gitignore          # Excludes local state files and lock files
├── Dockerfile          # Container recipe packaging Nginx and the web asset
├── index.html          # Custom styled HTML welcome page
├── providers.tf        # AWS provider and version constraints
├── variables.tf        # Environment naming parameters
├── ecr.tf              # Amazon ECR repository and URL outputs
└── ecs.tf              # ECS cluster, task definition, Fargate service, IAM roles, and security groups