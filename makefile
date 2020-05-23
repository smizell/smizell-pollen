develop:
	raco pollen start site

reset:
	rm -rf dist/
	mkdir dist/

copy-archive:
	cp -R archive/public dist/public
	cp -R archive/weblog dist/weblog
	cp -R archive/css dist/css
	cp -R archive/micro dist/micro
	cp -R archive/writing dist/writing

build-site:
	raco pollen render -p site/
	raco pollen publish site/ site-dist/
	cp -R site-dist/* dist/

build: reset copy-archive build-site

deploy-preview: build
	netlify deploy --dir=dist

deploy: build
	netlify deploy --dir=dist --prod
