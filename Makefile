NAME = tcpdump

build:
	docker build -t crccheck/$(NAME) .

shell: clean
	docker run --rm -it --name $(NAME)_1 crccheck/$(NAME) /bin/sh

run: clean
	docker run --rm --name $(NAME)_1 crccheck/$(NAME)

clean:
	@docker rm -f $(NAME)_1 2>/dev/null || true
