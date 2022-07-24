pkgs := iNZightTools iNZightTS iNZightMR iNZightPlots iNZightRegression  iNZightModules iNZight FutureLearnData iNZightUpdate

install:
	@for pkg in $(pkgs) ; do \
		pkg=$$pkg Rscript -e 'remotes::install_local(file.path("pkgs", Sys.getenv("pkg")), depends=TRUE, force=T)' ; \
	done

versions:
	@for pkg in $(pkgs) ; do \
		pkg=$$pkg Rscript -e 'cat(Sys.getenv("pkg"), "-", as.character(packageVersion(Sys.getenv("pkg"))), "\n")' ; \
	done
