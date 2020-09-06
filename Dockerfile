FROM alpine:3.12.0

RUN apk add emacs

COPY packages.el /tmp/packages.el
COPY deardocs.el /tmp/deardocs.el
RUN /usr/bin/emacs --batch --script /tmp/packages.el

CMD ["/usr/bin/emacs", "--batch", "--script", "/tmp/deardocs.el"]
