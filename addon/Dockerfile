ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependencies
RUN apk add --no-cache nodejs npm git

# Install PiGallery2
RUN git clone https://github.com/bpatrik/pigallery2.git /app \
    && cd /app \
    && npm install \
    && npm run build \
    && npm install -g serve

# Copy startup script
COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
