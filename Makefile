all: 
	@echo All does nothing. Use "make deploy" to commit and push built files.

deploy: 
	Rscript -e 'blogdown::build_site()'
	cd .GENERATED; git add -A
	cd .GENERATED; git commit -m "Redeploy site"
	cd .GENERATED; git push