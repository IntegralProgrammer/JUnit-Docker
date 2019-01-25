FROM fedora:29

RUN dnf install -y \
	junit \
	java-devel \
	nano

ADD create_junit_project.sh /usr/bin/
RUN chmod u+x /usr/bin/create_junit_project.sh
CMD bash
