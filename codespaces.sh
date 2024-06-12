#Bring up the lab
cd netlab/project1
export ANSIBLE_CONFIG=ansible.cfg
netlab up
sleep 120s
netlab validate
