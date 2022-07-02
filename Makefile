NAME := ifmt/suap-os

PAK1 := ${NAME}:`date +\%Y\%m\%d`
PAK2 := ${NAME}:latest

all:

clean:

	@docker rmi --force ${PAK1}
	@docker rmi --force ${PAK2}

build:

	@docker build --no-cache --force-rm --compress --tag ${PAK1} --tag ${PAK2} .

push:

	@docker push ${PAK1}
	@docker push ${PAK2}
