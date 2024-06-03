all:
	@docker-compose -f ./srcs/docker-compose.yml up --build 

down:
	@docker-compose -f ./srcs/docker-compose.yml down

re:
	@docker-compose -f ./srcs/docker-compose.yml up --build

clean:
	docker system prune -af && docker volume prune --force
	# docker rm $(docker images -a)