# rstudio-lmod-patch
Alllows for Rstudio users to effectively load modules, as long as those modules represent R packages.

usage:
```
>library("unitymodule")
>unity_r_module("modulename")
>library("modulename")
```

`unity_r_module` calls a bash script. Bash script does `module load r-$MODULENAME` and then starts R.
Once in R it does `.libPaths()`, formats that output into a colon delimited string, and quits.
`unity_r_module` takes that stdout and splits it back into a list, and adds it to the current R
sessions, libPaths.

unity_r_module.R was added to a package, compiled, and placed in a central R environment.
