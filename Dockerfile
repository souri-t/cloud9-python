FROM alpine:3.7
LABEL maintainer "souri-t"

RUN apk add --update --no-cache bash git nodejs make gcc g++ python curl wget build-base openssl-dev apache2-utils libxml2-dev sshfs tmux supervisor \
	&& rm -f /var/cache/apk/* \
	&& git clone https://github.com/c9/core.git /c9 \
	&& curl -s -L https://raw.githubusercontent.com/c9/install/master/link.sh | bash \
	&& mkdir -p /workspace \
	&& cd /c9 \
	&& ./scripts/install-sdk.sh

# Install Python3 and AWS
RUN apk --update --no-cache add git python3 python3-dev musl-dev
RUN pip3 install --upgrade pip

VOLUME ["/workspace"]
WORKDIR /workspace


# Expose ports.
EXPOSE 8080

ENV USERNAME user
ENV PASSWORD pass

ENTRYPOINT ["sh", "-c", "/usr/bin/node /c9/server.js -l 0.0.0.0 -p 8080 -w /workspace -a $USERNAME:$PASSWORD"]
