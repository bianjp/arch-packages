# iWhaleCloud VPN routes

Route only intranet traffic to VPN tunnel.

Be sure not to make VPN gateway as the default route:

* Check "Use this connection only for resources on its network" option in NetworkManager (Edit connection -> IPv4)
* Or run `nmcli connection modify ppp0 ipv4.never-default true` (change "ppp0" if necessary)

You can also configure the routes in NetworkManager (Edit connection -> IPv4 -> Routes) directly.
