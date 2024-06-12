cd netlab/project1
export ANSIBLE_CONFIG=ansible.cfg
find /usr -type d -path '*validate*'
#mkdir  /usr/local/python/3.10.13/lib/python3.10/site-packages/netsim/validate/bgp/
#mkdir  /usr/local/python/3.10.13/lib/python3.10/site-packages/netsim/validate/ospf/
#mkdir  /usr/local/python/3.10.13/lib/python3.10/site-packages/netsim/validate/isis/
#cp netlab/project1/tests/bgp/frr.py /usr/local/python/3.10.13/lib/python3.10/site-packages/netsim/validate/bgp/frr.py
#cp netlab/project1/tests/ospf/frr.py /usr/local/python/3.10.13/lib/python3.10/site-packages/netsim/validate/ospf/frr.py
#cp netlab/project1/tests/isis/frr.py /usr/local/python/3.10.13/lib/python3.10/site-packages/netsim/validate/isis/frr.py
netlab up
sleep 120s
netlab validate
