.PHONY: new_user sqlfix

new_user:
	docker compose exec panel php artisan p:user:make

sqlfix:
	docker compose exec panel bash -c 'echo -e "[client]\nssl=false\nskip-ssl" > ~/.my.cnf'
	docker compose exec panel php artisan migrate --force
