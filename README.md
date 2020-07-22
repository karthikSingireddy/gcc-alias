# gcc-alias
This script is intended to automate setting up aliases for compiling and running C programs.

## Usage
``` bash
$ . ./gccAlias.sh <compileCommand> <runCommand> <compileAndRunCommand> <c file> <output file>
```

## Example
``` bash
$ . ./gccAlias.sh hc hr hcr program.c program
```

Use hc to compile the code, hr to run the program, and hcr to compile and run.

## Setup
``` bash
$ wget "https://raw.githubusercontent.com/karthikSingireddy/gcc-alias/master/gccAlias.sh"
$ chmod a+x gccAlias.sh
```
