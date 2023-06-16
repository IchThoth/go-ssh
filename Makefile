build:
	@go build -o bin/server

run: build
	@./bin/server

ssh:
	@ssh-keygen -f "home/ichthoth/.ssh/known_hosts" -R "[localhost]:3222"
	@cat big.txt | ssh localhost -p 3222

scp:
	ssh-keygen -f "home/ichthoth/.ssh/known_hosts" -R "[localhost]:3222"
	@scp -P 3222 main.go localhost:aa@dd.com

scpfolder:
	@ssh-keygen -f "home/ichthoth/.ssh/known_hosts" -R "[localhost]:3222"
	@scp -P 3222 -r testfolder localhost:aa@dd.com

badscp:
	@ssh-keygen -f "home/ichthoth/.ssh/known_hosts" -R "[localhost]:3222"
	@scp -P 3222 main.go localhost:aaa.com

.PHONY: ssh