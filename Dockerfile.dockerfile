#Image for golang using latest version
FROM golang:latest
#Where the directory work
WORKDIR /go/src/github.com/nugrohoindrag/cetol
#Add all our projects to docker
ADD . ./
#Build the apps 
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix
#port
EXPOSE 8000
#ENTRY POINT
ENTRYPOINT [ "./cetol" ]