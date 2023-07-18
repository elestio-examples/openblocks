<a href="https://elest.io">
  <img src="https://elest.io/images/elestio.svg" alt="elest.io" width="150" height="75">
</a>

[![Discord](https://img.shields.io/static/v1.svg?logo=discord&color=f78A38&labelColor=083468&logoColor=ffffff&style=for-the-badge&label=Discord&message=community)](https://discord.gg/4T4JGaMYrD "Get instant assistance and engage in live discussions with both the community and team through our chat feature.")
[![Elestio examples](https://img.shields.io/static/v1.svg?logo=github&color=f78A38&labelColor=083468&logoColor=ffffff&style=for-the-badge&label=github&message=open%20source)](https://github.com/elestio-examples "Access the source code for all our repositories by viewing them.")
[![Blog](https://img.shields.io/static/v1.svg?color=f78A38&labelColor=083468&logoColor=ffffff&style=for-the-badge&label=elest.io&message=Blog)](https://blog.elest.io "Latest news about elestio, open source software, and DevOps techniques.")

# Openblocks, verified and packaged by Elestio

A better community platform for the modern web.

[Openblocks](https://openblocks.dev/)Openblocks is a retool Alternative developer-friendly open-source low-code platform to build internal apps within minute.

<img src="https://github.com/elestio-examples/openblocks/raw/main/openblocks.gif" alt="openblocks" width="800">

Deploy a <a target="_blank" href="https://elest.io/open-source/openblocks">fully managed Openblocks</a> on <a target="_blank" href="https://elest.io/">elest.io</a> Openblocks is a retool Alternative developer-friendly open-source low-code platform to build internal apps within minutes.

[![deploy](https://github.com/elestio-examples/openblocks/raw/main/deploy-on-elestio.png)](https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/openblocks)

# Why use Elestio images?

- Elestio stays in sync with updates from the original source and quickly releases new versions of this image through our automated processes.
- Elestio images provide timely access to the most recent bug fixes and features.
- Our team performs quality control checks to ensure the products we release meet our high standards.

# Usage

## Git clone

You can deploy it easily with the following command:

    git clone https://github.com/elestio-examples/openblocks.git

Copy the .env file from tests folder to the project directory

    cp ./tests/.env ./.env

Edit the .env file with your own values.


Run the project with the following command

    docker-compose up -d

You can access the Web UI at: `http://your-domain:3432`

## Docker-compose

Here are some example snippets to help you get started creating a container.

        version: "3.3"
        services:
        openblocks:
            image: elestio4test/openblocks-ce:${SOFTWARE_VERSION_TAG}
            container_name: openblocks
            ports:
            - "172.17.0.1:3432:3000"
            volumes:
            - ./stacks:/openblocks-stacks
            restart: always

### Environment variables

|       Variable       | Value (example) |
| :------------------: | :-------------: |
| SOFTWARE_VERSION_TAG | latest          |




# Maintenance

## Logging

The Elestio Openblocks Docker image sends the container logs to stdout. To view the logs, you can use the following command:

    docker-compose logs -f

To stop the stack you can use the following command:

    docker-compose down

## Backup and Restore with Docker Compose

To make backup and restore operations easier, we are using folder volume mounts. You can simply stop your stack with docker-compose down, then backup all the files and subfolders in the folder near the docker-compose.yml file.

Creating a ZIP Archive
For example, if you want to create a ZIP archive, navigate to the folder where you have your docker-compose.yml file and use this command:

    zip -r myarchive.zip .

Restoring from ZIP Archive
To restore from a ZIP archive, unzip the archive into the original folder using the following command:

    unzip myarchive.zip -d /path/to/original/folder

Starting Your Stack
Once your backup is complete, you can start your stack again with the following command:

    docker-compose up -d

That's it! With these simple steps, you can easily backup and restore your data volumes using Docker Compose.

# Links

- <a target="_blank" href="https://docs.openblocks.dev/">Openblocks documentation</a>

- <a target="_blank" href="https://github.com/openblocks-dev/openblocks">Openblocks Github repository</a>

- <a target="_blank" href="https://github.com/elestio-examples/openblocks">Elestio/openblocks Github repository</a>