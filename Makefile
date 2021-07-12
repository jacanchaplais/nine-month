compile_report:
	@[ -d 'public/' ] && rm -rf public/ && mkdir public/
	@mkdir public/css/
	@pysassc src/scss/main.scss public/css/custom.css
	@rsync -rau static/* public/
	@pandoc --defaults=templates/build.yaml
