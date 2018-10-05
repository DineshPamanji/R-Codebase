InstalledPackages <- function(packageNeedtoInstall){
  if(!eval(parse(text=paste0("require(",packageNeedtoInstall,")"))))
    install.packages(packageNeedtoInstall)
  eval(parse(text=paste0("library(",packageNeedtoInstall,")")))
  Sys.sleep(1)
}
Packages = c("data.table",
             "Rsolnp",
             "rjson",
             "plotly",
             "parallel",
             "nloptr")
lapply(Packages, InstalledPackages)
