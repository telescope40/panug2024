#Bring up the lab
cd netlab/project1
netlab install -y ubuntu ansible containerlab
export ANSIBLE_CONFIG=ansible.cfg
netlab up
sleep 120s
netlab validate
