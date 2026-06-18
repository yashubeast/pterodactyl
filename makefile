.PHONY: new_user sqlfix wipe_dirs wipe_cache

new_user:
	docker compose exec panel php artisan p:user:make

sqlfix:
	docker compose exec panel bash -c 'echo -e "[client]\nssl=false\nskip-ssl" > ~/.my.cnf'
	docker compose exec panel php artisan migrate --force

wipe_dirs:
	sudo rm -rf appvar database nginx logs

wipe_cache:
	docker compose exec panel php artisan config:clear
	docker compose exec panel php artisan cache:clear
