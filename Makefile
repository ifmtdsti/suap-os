CURRENT := carlosrabelo/suap-os:20210907
LASTEST := carlosrabelo/suap-os:lastest

all:

clean:

	@docker rmi -f $(CURRENT)
	@docker rmi -f $(LASTEST)

build:

	@docker build -t $(CURRENT) .
	@docker tag ${CURRENT} ${LASTEST}

push:

	@docker push ${CURRENT} -a
