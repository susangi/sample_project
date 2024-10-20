# Simple Dockerized Project

This is a simple project that demonstrates how to create a Dockerized Node.js application with a persistent volume mount, allowing files to be shared between the host machine and the Docker container.

### Project Structure

```
.
├── Dockerfile
├── package.json
├── index.js
└── README.md
└── .gitignore
```

## Running the Project
### 1. Build the Docker Image

First, build the Docker image from the Dockerfile by running the following command:

```
docker build -t simple-image .
```

### 2. Run the Docker Container

Once the image is built, run the Docker container. We use volumes to persist files between the host and the container:

Mount the current directory (${PWD}) to /app inside the container.
Mount the node_modules directory to avoid overwriting the container's node_modules.

```
docker run --name simple-container --rm -v /app/node_modules -v ${PWD}:/app simple-image
````

### 3. Stop the Container

To stop the running container, press CTRL+C or run:

```
docker stop simple-container
```

## Persistent Data

The volume mounted between the host and the container ensures that any changes you make to your application (such as modifying files or installing new dependencies) are persisted across container restarts.