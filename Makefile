all: watch

install:
	bundle install

build: clear
	cp -rf ${POSTS_DIR} _posts || true
	bundle exec jekyll build
	cp ${PROJECTS_DIR}/resume/resume.pdf ${PROJECTS_DIR}/blog/dist/

watch:
	browser http://localhost:4000
	bundle exec jekyll serve

clear:
	rm -rf dist || true
	rm -rf _posts || true
deploy:  build
