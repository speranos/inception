
all :
	@cd srcs && docker compose up -d
fclean :
	@cd srcs && docker compose down
	@cd srcs && docker system prune -af
	@cd dt_volume && sudo rm -rf *
	@cd wd_volume && sudo rm -rf *