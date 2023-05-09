<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

# Nest FFmpeg Starter with Docker

This starter project is a simple Nest application that demonstrates the integration of FFmpeg with Docker. The project provides an easy-to-use example for working with video and audio processing using NestJS and FFmpeg in a Dockerized environment.

## Getting Started

These instructions will help you set up and run the project on your local machine for development and testing purposes.

### Prerequisites

To run this project, you need to have the following software installed on your system:

- [Docker](https://www.docker.com/products/docker-desktop)

### Installation

1. Clone the repository:

```bash
git clone https://github.com/owenthcarey/nest-ffmpeg.git
cd nest-ffmpeg
```

2. Build and run the Docker container:

```bash
./build_and_run.sh
```

This script will stop and remove any existing Docker container using port 3000, build the Docker image, and run a new container using the created image.

## Usage

Once the Docker container is running, you can test the FFmpeg integration by sending a request to the `/ffmpeg` endpoint:

```bash
curl http://localhost:3000/api/ffmpeg
```

The response should return the version information of FFmpeg installed in the Docker container.

## Project Structure

```text
.
├── build_and_run.sh          # Script to build and run the Docker container
├── Dockerfile                # Dockerfile to create the Docker image
├── nest-cli.json             # NestJS CLI configuration
├── package.json              # Application dependencies and scripts
├── package-lock.json         # Exact dependency tree for consistency across environments
├── src                       # Source code directory
│   ├── app.controller.ts     # Main application controller
│   ├── app.module.ts         # Main application module
│   ├── app.service.ts        # Main application service
│   ├── ffmpeg                # FFmpeg integration code
│   │   ├── ffmpeg.controller.ts
│   │   ├── ffmpeg.module.ts
│   │   └── ffmpeg.service.ts
│   └── main.ts               # Application entry point
├── test                      # End-to-end test configuration and specs
│   ├── app.e2e-spec.ts
│   └── jest-e2e.json
├── tsconfig.build.json       # TypeScript configuration for building the application
└── tsconfig.json             # TypeScript configuration for development
```
