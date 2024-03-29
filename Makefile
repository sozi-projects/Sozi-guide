
SSH_HOST=sozi.guide
SSH_PORT=22
SSH_USER=sozi
SSH_TARGET_DIR=/var/www/sozi.guide/

start:
	raco pollen start src

reset:
	raco pollen reset src

render:
	raco pollen render src

publish: render
	raco pollen publish src pub

upload: publish
	rsync --rsh="ssh -p $(SSH_PORT)" --progress --verbose \
		--archive --recursive --compress --delete \
		--chown=www-data:www-data \
		pub/ $(SSH_USER)@$(SSH_HOST):$(SSH_TARGET_DIR)
