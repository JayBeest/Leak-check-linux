FROM	ubuntu:20.04
LABEL	maintainer = "jcorneli <jcorneli@student.codam.nl>"
LABEL 	version="0.1"
LABEL 	description="This is custom Docker Image for checking C leaks using valgrind"

# Install packages
RUN		apt-get update && apt-get install -y \
		gcc \
		clang \
		make \
		vim \
		valgrind

EXPOSE	80 443

COPY	start.sh .
CMD		["/bin/bash", "start.sh"]
