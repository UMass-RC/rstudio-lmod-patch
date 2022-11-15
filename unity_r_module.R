unity_r_module <- function(modulename){
    # disable warnings
    beforeWarnOpt = getOption("warn")
    options(warn=-1)

    command = paste(". /etc/profile; module load microarch/x86_64; unity-module-r-libpaths", modulename)
    commandOutput = system(command, intern=TRUE)
    # status attribute is null if command was a success
    if (is.null(attr(commandOutput, "status"))){
        newLibPaths = strsplit(commandOutput, ':')[[1]]
        .libPaths(newLibPaths)
    }

    # re-enable warnings
    options(warn=beforeWarnOpt)
}
