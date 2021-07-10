CURRENT := carlosrabelo/suap-os:20210710
LATEST  := carlosrabelo/suap-os:latest

all:

clean:

	@docker rmi -f $(CURRENT)
	@docker rmi -f $(LATEST)

build:

	@docker build -t $(CURRENT) .
	@docker tag ${CURRENT} ${LATEST}

push:

	@docker push ${CURRENT} -a
