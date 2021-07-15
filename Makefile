NAME := carlosrabelo/suap-os

CURRENT := ${NAME}:$(shell date +%Y%m%d%H%M%S)
LATEST  := ${NAME}:latest

all:

clean:

	@docker rmi -f ${CURRENT}
	@docker rmi -f ${LATEST}

build:

	@docker build -t ${CURRENT} .
	@docker tag ${CURRENT} ${LATEST}

push:

	@docker push ${LATEST}
