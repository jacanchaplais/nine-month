compile_report:
	@git submodule update --init --recursive
	@if [ -d 'public/' ] ; then rm -rf public/ ; fi
	@mkdir -p public/css/
	@pysassc src/scss/main.scss public/css/custom.css
	@rsync -rau static/* public/
	@pandoc --defaults=templates/build.yaml
