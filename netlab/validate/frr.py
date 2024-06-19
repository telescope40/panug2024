# Top-level FRR validation plugin
#
# Import FRRouting OSPF and BGP checks and Linux ping/route checks
#
from box import Box
from ospf.frr import *
from isis.frr import *
from bgp.frr import *
from netsim.validate.linux import *
