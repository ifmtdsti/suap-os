NAME := ifmt/suap-os

REF := $(shell git symbolic-ref --short HEAD)
SHA := $(shell git rev-parse --short=8 HEAD)
TS  := $(shell date +%s)

PAK1 := ${NAME}:latest
PAK2 := ${NAME}:${REF}-${SHA}-${TS}
PAK3 := gitlab.ifmt.edu.br:5005/csn/suap

all:

build:

	@docker build --no-cache --force-rm --compress --tag ${PAK1} --tag ${PAK2} --tag ${PAK3} .

push:

	@docker push ${PAK1}
	@docker push ${PAK2}

push-local:

	@docker push ${PAK3}
