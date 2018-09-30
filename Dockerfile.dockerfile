# golang image where workspace (GOPATH) configured at /go.
FROM golang:latest

# Copy the local package files to the container’s workspace.
ADD . /go/src/github.com/nugrohoindrag/cetol

# Build the golang-docker command inside the container.
RUN go install github.com/nugrohoindrag/cetol

# Run the golang-docker command when the container starts.
ENTRYPOINT /go/bin/cetol

# http server listens on port 8080.
EXPOSE 8080
