## Deploy

# packtrat
if using bioconductor packages please set repositories

```R
setRepositories()
```
Once set, install bioconcutor packages using the `install.packages()`command

Require to init packrat

```R
packrat::init(options = list(use.cache = TRUE))
```


#!/usr/bin/env bash

```
rm -r packrat && rm .Rprofile && R --vanilla -e "packrat::init(options = list(use.cache = TRUE))"
```

```
git add -A && git commit -m "modified readme and deploy" && git tag -a 0.0.3 -m "++" && git push && git push --tags
