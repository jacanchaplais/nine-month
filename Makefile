compile_report:
	@pysassc src/scss/main.scss custom.css
	@pandoc --defaults=templates/build.yaml
