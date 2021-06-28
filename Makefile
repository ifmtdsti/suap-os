LASTEST := carlosrabelo/suap-os:lastest
CURRENT := carlosrabelo/suap-os:18.04

clean:
	@docker rmi -f $(LASTEST)
	@docker rmi -f $(CURRENT)

build:
	@docker build -t $(CURRENT) .
	@docker tag ${CURRENT} ${LASTEST}

push:
	@docker push ${CURRENT}
