# How to setup

## Initial Setup
1. docker compose up -d
2. run this command to make a admin user `docker compose exec panel php artisan p:user:make`
3. if above command failed run these 2 commands then do step 2 again
```sh
docker compose exec panel bash -c 'echo -e "[client]\nssl=false\nskip-ssl" > ~/.my.cnf'
docker compose exec panel php artisan migrate --force
```

## Creating first Node
1. Click settings-icon (tooltip: admin) at top right
2. Click Locations at left sidebar
3. Create a new location
4. Click Nodes at left sidebar
5. Create a new Node

## Node Settings Guide
- Daemon and SFTP Port: same as docker ports exported
