# OpenConf Hackathon 2024

Getting started application for OpenConf Hackathon 2024.

A simple chatbot using Google Vertex AI


## Requirements

### System requirements
- JDK 21.0 or later
- Google Cloud SDK
- Podman or Docker
- Git (not mandatory)
- A terminal

### Service requirements

  The project uses the Gemini API, so you need to have a Google Cloud Platform account and enable it there:

  # Setup
  1. Create a new project in Google Cloud Platform
  2. Enable the following APIs:
      - Vertex AI API (requires a billing account)
  
  We are going to need the following environment variables:
  
  - **GEMINI_PROJECT_ID**: The id of the project in Google Cloud Platform.
  - **GEMINI_LOCATION**: The location of the resources in Google Cloud Platform (e.g. europe-central2).
  
  **Note**: These environment variables are referenced in the [./src/main/resources/application.properties](application properties) file. 
  Feel free to skip setting them up and hard code the values in the file.

## Connecting to Gemini API

```sh
gcloud config set project $GEMINI_PROJECT_ID
gcloud auth application-default login
```

## Building and running the application

To build the application:

```sh
./mvnw clean install
```

To run in dev mode:

```sh
./mvnw quarkus:dev
```


