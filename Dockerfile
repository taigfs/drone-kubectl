FROM alpine
RUN apk update && \
   apk add curl gettext && \
   curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
   mv kubectl /usr/local/bin && \
   chmod a+rx /usr/local/bin/kubectl

ENTRYPOINT ["kubectl"]

CMD ["--help"]