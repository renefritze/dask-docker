
start:
	docker-compose up -d

stop:
	docker-compose down

log:
	multitail -o beep_method:popup                                        \
	          -t scheduler -cT ansi -l 'docker-compose logs -f scheduler' \
	          -t worker -cT ansi -l 'docker-compose logs -f worker'       \
	          -t notebook -cT ansi -l 'docker-compose logs -f notebook'

.PHONY: start stop log
