nishad-storm-docker
============

Modification of https://github.com/wurstmeister/storm-docker to use storm version 0.10.2. To change to another version of storm, change 'storm-nimbus/Dockerfile' with appropriate download link for the release.



##Pre-Requisites

- install docker-compose [http://docs.docker.com/compose/install/](http://docs.docker.com/compose/install/)

##Usage

Start a cluster:

- ```docker-compose up```

Destroy a cluster:

- ```docker-compose stop```

Add more supervisors:

- ```docker-compose scale supervisor=3```

##Building

- ```rebuild.sh```

##FAQ
### How can I access Storm UI from my host?
So, to open storm UI, type the following in your browser:

    localhost:49080

### How can I deploy a topology?
To check running images:

    docker images

Connect to the storm_nimbus docker image and execute storm:

    docker exec -it {{storm_nimbus_image_name}} /bin/bash
    storm jar target/your-topology-fat-jar.jar com.your.package.AndTopology topology-name
