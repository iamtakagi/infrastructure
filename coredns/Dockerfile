FROM coredns/coredns:1.9.4

EXPOSE 53
EXPOSE 53/udp

ENTRYPOINT ["/coredns"]
CMD ["-conf", "/etc/coredns/Corefile"]