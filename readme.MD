# Docker Tor-relay
Create easily a Tor mid-relay.

# Configuration
First, edit `torrc` file and change :

 * __Nickname__ with a pretty funny name
 * __ContactInfo__ with a contact address, PGP key or ... your phone number?
 * __RelayBandwithRate__ and __RelayBandwidthBurst__ with a maximum bandwith you allow to your tor relay. If you prefer allow Tor to use all available bandwidth, remove this two lines.
 * (Optional) __DirPort__ and __ORPort__ if you likely to use another port. If you change there lines, you need to modify the __EXPOSE__ ports in _Dockerfile_.

# Build and run
To build the container after modifications, execute this line to build the container:
```
docker build -t tor-relay .
```

and run the container :
```
docker run -di --name pretty-good-relay tor-relay
```

and voilà !


