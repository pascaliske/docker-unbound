# tini
FROM --platform=${BUILDPLATFORM} alpine:3.17 as tini
LABEL maintainer="info@pascaliske.dev"

# environment
ENV TINI_VERSION=v0.19.0
ARG TARGETPLATFORM

# install tini
RUN case ${TARGETPLATFORM} in \
    "linux/amd64")  TINI_ARCH=amd64  ;; \
    "linux/arm64")  TINI_ARCH=arm64  ;; \
    "linux/arm/v7") TINI_ARCH=armhf  ;; \
    esac \
    && wget -q https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-static-${TINI_ARCH} -O /tini \
    && chmod +x /tini

# final image
FROM alpine:3.17
LABEL maintainer="info@pascaliske.dev"

# install unbound
RUN apk update && apk upgrade && apk add --no-cache \
    bind-tools \
    openssl \
    unbound

# inject built files
COPY --from=tini /tini /sbin/tini

# inkect config files
COPY config/unbound.conf /etc/unbound/unbound.conf

# inject entrypoint
COPY docker-entrypoint.sh /docker-entrypoint.sh

# increase maximum receive window size
RUN echo "net.core.rmem_max=1048576" >> /etc/sysctl.conf

# health check
HEALTHCHECK CMD dig @127.0.0.1 -p 5053 cloudflare.com || exit 1

# expose port
EXPOSE 5053/tcp
EXPOSE 5053/udp

# let's go!
ENTRYPOINT [ "/sbin/tini", "--", "/docker-entrypoint.sh" ]
CMD [ "/usr/sbin/unbound", "-v", "-d" ]
