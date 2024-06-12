cd netlab/project1
export ANSIBLE_CONFIG=ansible.cfg
find /usr -type d -path '*validate*'
mkdir  /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/bgp/
mkdir  /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/ospf/
mkdir  /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/isis/
cp netlab/project1/tests/bgp/frr.py /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/bgp/frr.py
cp netlab/project1/tests/ospf/frr.py /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/ospf/frr.py
cp netlab/project1/tests/isis/frr.py /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/isis/frr.py
netlab up
sleep 120s
netlab validate
