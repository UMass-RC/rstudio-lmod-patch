# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

unity_r_module <- function(modulename){
  command = paste(". /etc/profile; module load microarch/x86_64; unity-module-r-libpaths r-", modulename, sep='')
  commandOutput = system(command, intern=TRUE)
  newLibPaths = strsplit(commandOutput, ':')[[1]]
  .libPaths(newLibPaths)
}
