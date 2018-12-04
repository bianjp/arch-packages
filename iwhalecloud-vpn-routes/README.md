# iWhaleCloud VPN routes

Route only intranet traffic to VPN tunnel.

Be sure not to make VPN gateway as the default route:

* Check "Use this connection only for resources on its network" option in NetworkManager VPN configuration panel
* Or run `nmcli connection modify ppp0 ipv4.never-default true` (change "ppp0" if necessary)
