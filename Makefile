NAME        =   ft_server
VERSION     =   latest
PORT_HTTP   =   80:80
PORT_HTTPS  =   443:443
SDOCKER     =   sudo docker

.PHONY: build
build:
	$(SDOCKER) build -t $(NAME):$(VERSION) .

.PHONY: run
run:
	$(SDOCKER) run --name $(NAME) -p $(PORT_HTTP) -p $(PORT_HTTPS) -it $(NAME):$(VERSION)

.PHONY: start
start:
	$(SDOCKER) start -ai $(NAME)

.PHONY: stop
stop:
	$(SDOCKER) stop $(NAME)

.PHONY: exec
exec:
	$(SDOCKER) exec -it $(NAME) /bin/bash

.PHONY: rm
rm:		stop
	$(SDOCKER) rm $(NAME)

.PHONY: rmi
rmi:	rm
	$(SDOCKER) rmi $(NAME):$(VERSION)
