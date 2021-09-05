NAME   := ifmt/suap-os
LATEST := ${NAME}:latest

all:

clean:

	@docker rmi --force ${LATEST}

build:

	@docker build --no-cache --force-rm --compress --tag ${LATEST} .

push:

	@docker push ${LATEST}
