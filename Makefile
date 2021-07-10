NAME := carlosrabelo/suap-os

CURRENT := ${NAME}:20210710
LATEST  := ${NAME}:latest

all:

clean:

	@docker rmi -f ${CURRENT}
	@docker rmi -f ${LATEST}

build:

	@docker build -t ${CURRENT} .
	@docker tag ${CURRENT} ${LATEST}

push:

	@docker push -a ${NAME}
