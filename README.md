# Project to try out fuzzing tools for C++, mainly Google. #


# License: #

Copyright 2023 Andreas Lindmark (andreas.lindmark@devies.se)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Introduction #
This project was initially built using vs code and supports running the project in a development container. Fuzztest requires Linux and Cmake.
# Instructions 
Add fuzztest to the 
git clone https://github.com/google/fuzztest.git


# Instructions using Docker#
To just build the docker container and build the project within the docker container

* Make sure that Docker is installed on the machine

* docker build -t fuzzcpp .
* docker run -it fuzzcpp
* cmake . 
* cmake --build . 

# instructions using VS Code #
* VS Code must be installed with Docker addon
* There cannot be a build-directory... this is because VS Code mounts the original directory and files within the Docker container. This can be handy since you can edit the files within the container and the files are also modified on the host system.
* ...

## VS Code Tips: ##
Dev Containers Reopen Folder Locally exits the docker container
