# Top-level FRR validation plugin
#
# Import FRRouting OSPF and BGP checks and Linux ping/route checks
#
from box import Box
from validate.ospf.frr import *
from validate.isis.frr import *
from validate.bgp.frr import *
from netsim.validate.linux import *
