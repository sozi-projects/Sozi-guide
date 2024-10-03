
SSH_HOST=infomaniak-tiliosys
SSH_PORT=22
SSH_TARGET_DIR=~/sites/sozi.guide/

start:
	raco pollen start src

reset:
	raco pollen reset src

render:
	raco pollen render src

publish: render
	raco pollen publish src pub

upload: #publish
	rsync --rsh="ssh -p $(SSH_PORT)" --progress --verbose \
		--archive --recursive --compress --delete \
		pub/ $(SSH_HOST):$(SSH_TARGET_DIR)
	rsync --rsh="ssh -p $(SSH_PORT)" --progress --verbose \
		--archive \
		conf/htaccess $(SSH_HOST):$(SSH_TARGET_DIR).htaccess
