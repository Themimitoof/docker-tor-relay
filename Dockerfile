FROM ubuntu:16.04
MAINTAINER Michael Vieira <contact@mvieira.fr>

# Install tor package
RUN apt-get update \
	apt-get install -y tor

# Copy the relay configuration
COPY torrc /etc/tor/

# Expose relay ports to the host
EXPOSE 9001 9030

# Launch tor in foreground
CMD ["tor", "-f"]

