#https://lemariva.com/blog/2020/10/vscode-c-development-and-debugging-containers
#https://devblogs.microsoft.com/cppblog/using-vs-code-for-c-development-with-containers/
#https://mrzebra.co.uk/code/2021/10/29/how-to-use-clang-with-visual-studio-code-and-docker/
#https://ddanilov.me/dockerized-cpp-build-with-vscode

#FROM debian:bullseye
FROM mcr.microsoft.com/devcontainers/cpp:debian-11

LABEL description="Container to run the FuzzCpp project on a Linux system, which is a requirement for Google FuzzTest"

# Update and install dependencies
RUN apt-get update && apt-get install -y \
    clang \
    cmake

# Copy the current directory contents into the container
RUN mkdir /fuzzcpp
COPY . /fuzzcpp

RUN chown -R root:root /fuzzcpp && chmod -R 777 /fuzzcpp

# Build the application using cmake
#RUN mkdir build && cd build && cmake .. && make

# Run the output program from the previous step
#CMD ["./build/myapp"]

# configure SSH for communication with Visual Studio 
#RUN mkdir -p /var/run/sshd

