server:
    # general
    do-daemonize: no

    # logging
    use-syslog: no
    verbosity: 0

    # network
    interface: 0.0.0.0
    port: ${UNBOUND_PORT}

    # response
    do-ip4: yes
    do-udp: yes
    do-tcp: yes
    minimal-responses: yes

    # trust glue only if it is within the server's authority
    harden-glue: yes

    # require DNSSEC data for trust-anchored zones, if such data is absent, the zone becomes BOGUS
    harden-dnssec-stripped: yes

    # don't use Capitalization randomization as it known to cause DNSSEC issues sometimes
    # see https://discourse.pi-hole.net/t/unbound-stubby-or-dnscrypt-proxy/9378 for further details
    use-caps-for-id: no

    # reduce EDNS reassembly buffer size
    edns-buffer-size: 1232

    # perform prefetching of close to expired message cache entries
    prefetch: yes

    # ensure privacy of local IP ranges
    private-address: 192.168.0.0/16
    private-address: 169.254.0.0/16
    private-address: 172.16.0.0/12
    private-address: 10.0.0.0/8
    private-address: fd00::/8
    private-address: fe80::/10

    # only give access to recursion clients from LAN IPs
    access-control: 127.0.0.1/32 allow
    access-control: 192.168.0.0/16 allow
    access-control: 172.16.0.0/12 allow
    access-control: 10.0.0.0/8 allow
