#!/usr/bin/make
PYTHON := /usr/bin/env python3

lint:
	$(PYTHON) -m flake8 --exclude hooks/charmhelpers hooks
	charm proof

bin/charm_helpers_sync.py:
	mkdir -p bin
	bzr cat lp:charm-helpers/tools/charm_helpers_sync/charm_helpers_sync.py \
	    > bin/charm_helpers_sync.py

sync: bin/charm_helpers_sync.py
	$(PYTHON) bin/charm_helpers_sync.py -c charm-helpers-sync.yaml

push:	lint git charmstore

localrepo:
	rsync -av --exclude .git --exclude tests --exclude unused . $(JUJU_REPOSITORY)/xenial/unattended/

git:
	git push github

charmstore:	localrepo
	cd $(JUJU_REPOSITORY)/xenial/unattended/; charm push . cs:~$(USER)/unattended
