* Update hosts file
* Run the following command
```
ansible-playbook -i hosts main.yaml
```

**Note:** Since Ansible cannot support lxd 2.0. The lxc-container doesn't work. The `scripts/lxcUpdateGuests.sh` is a workaround. 
