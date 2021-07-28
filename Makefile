NAME   := carlosrabelo/suap-os
LATEST := ${NAME}:latest

all:

clean:

	@docker rmi -f ${LATEST}

build:

	@docker build -t ${LATEST} .

push:

	@docker push ${LATEST}
