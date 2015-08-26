# Use the official go docker image built on debian.
FROM golang:1.5.0

# Grab the source code and add it to the workspace.
ADD . /go/src/github.com/woodrow/revel-webapp

# Install revel and the revel CLI.
RUN go get github.com/revel/revel
RUN go get github.com/revel/cmd/revel

# Use the revel CLI to start up our application.
ENTRYPOINT revel run github.com/woodrow/revel-webapp dev 9000

# Open up the port where the app is running.
EXPOSE 9000
