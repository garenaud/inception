PATH_YML = ./srcs/docker-compose.yml
PATH_HOME = /home/grenaud/

all:
		@mkdir -p $(PATH_HOME)/data
		@mkdir -p $(PATH_HOME)/data/wordpress
		@mkdir -p $(PATH_HOME)/data/mariadb
		@sudo docker-compose -f $(PATH_YML) up -d --build
		@sleep 20
		@sudo chmod 777 -R $(PATH_HOME)data

re: clean all

stop:
	@sudo docker-compose -f $(PATH_YML) stop
run:
	@sudo docker-compose -f $(PATH_YML) up

logs:
	@sudo docker-compose -f $(PATH_YML) logs

exec-web:
	@sudo docker-compose -f $(PATH_YML) exec wordpress bash

exec-db:
	@sudo docker-compose -f $(PATH_YML) exec mariadb bash

clean: 
	@sudo docker-compose -f $(PATH_YML) down -v
	@sudo docker-compose -f $(PATH_YML) rm -v -f

fclean: clean
	@sudo rm -rf $(PATH_HOME)/data

prune: fclean	
	@sudo docker system prune -af