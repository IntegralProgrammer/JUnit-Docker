# JUnit-Docker

Creates a Docker container based on Fedora for running JUnit tests for the course SOFE3980 - Software Quality

Building
--------

After cloning this repository, run:

```bash
docker build -t junit-docker .
```

Running
-------

- Create a directory to share files between the host and container.

```bash
mkdir AllProjects
```

- Launch an instance of the Docker container sharing this directory

```bash
docker run --rm -v $(pwd)/AllProjects:/AllProjects -it junit-docker
```

- Within the container, create the project directory

```bash
cd /AllProjects
create_junit_project.sh MyProject
chmod 777 MyProject
```

- Add the files *TestJunit.java* and *TestRunner.java* to the *MyProject* directory.

- Compile from within the container.

```bash
javac TestJunit.java TestRunner.java
```

- Execute the test.

```bash
java TestRunner
```
