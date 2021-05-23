NAME = ubuntu

all:
	docker build -t $(NAME) .

stop:
	docker stop $(NAME)

start:
	docker run --name $(NAME) -dp 80:80 -p 443:443 $(NAME)

bash:
	docker exec -it $(NAME) bash

clean:
	docker rm $(NAME)

fclean: clean
	docker image rm $(NAME)

re: fclean all

test: all start bash
