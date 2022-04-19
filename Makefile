pkgs := iNZightTools iNZightTS iNZightMR iNZightPlots iNZightRegression  iNZightModules iNZight FutureLearnData iNZightUpdate

install:
	@for pkg in $(pkgs) ; do \
		DIR=pkgs/$$pkg Rscript -e 'setwd(Sys.getenv("DIR")); remotes::install_local(dependencies = TRUE)' ; \
	done

versions:
	@for pkg in $(pkgs) ; do \
		pkg=$$pkg Rscript -e 'cat(Sys.getenv("pkg"), "-", as.character(packageVersion(Sys.getenv("pkg"))), "\n")' ; \
	done
