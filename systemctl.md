# Systemd command

## List all active services, list-units is default action of systemctl, can be omitted
systemctl list-units --type=service

## Lista all installed servcies 
systemctl list-unit-files

## Start a service like nginx
systemctl start nginx

## Stop a service like nginx
systemctl stop nginx

## Enable a service
systemctl enable nginx --now

## Disable a service
systemctl disable nginx --now

## Check service status
systemctl status nginx

systemctl is-enabled nginx

systemctl is-active nginx

systemctl is-failed nginx

## View a unit file
systemctl cat nginx

## View a unit file with low level details
systemctl show nginx

## View dependencies
systemctl list-dependencies nginx

## Reload daemon after remove unit file
systemctl daemon-reload

