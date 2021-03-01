[[local|localrc]]
############################################################
# Customize the following HOST_IP based on your installation
############################################################
HOST_IP=192.168.58.161
FLOATING_RANGE=192.168.58.1/24
PUBLIC_NETWORK_GATEWAY=192.168.58.2
Q_FLOATING_ALLOCATION_POOL=start=192.168.58.200,end=192.168.58.220
PUBLIC_INTERFACE=ens33

ADMIN_PASSWORD=mima
MYSQL_PASSWORD=$ADMIN_PASSWORD
RABBIT_PASSWORD=$ADMIN_PASSWORD
DATABASE_PASSWORD=$ADMIN_PASSWORD
SERVICE_PASSWORD=$ADMIN_PASSWORD
SERVICE_TOKEN=$ADMIN_PASSWORD

############################################################
# Customize the following section based on your installation
############################################################

# Pip
PIP_USE_MIRRORS=False
USE_GET_PIP=1

#OFFLINE=False
#RECLONE=True

# Logging
LOGFILE=$DEST/logs/stack.sh.log
VERBOSE=True
ENABLE_DEBUG_LOG_LEVEL=True
ENABLE_VERBOSE_LOG_LEVEL=True
# Neutron ML2 with OpenVSwitch
Q_PLUGIN=ml2
Q_AGENT=openvswitch

# Disable security groups
Q_USE_SECGROUP=False
LIBVIRT_FIREWALL_DRIVER=nova.virt.firewall.NoopFirewallDriver

# Enable heat, networking-sfc, barbican and mistral
enable_plugin heat https://git.openstack.org/openstack/heat  stable/rocky
enable_plugin networking-sfc https://git.openstack.org/openstack/networking-sfc stable/rocky
enable_plugin barbican https://git.openstack.org/openstack/barbican stable/rocky
enable_plugin mistral https://git.openstack.org/openstack/mistral stable/rocky

# Ceilometer
CEILOMETER_PIPELINE_INTERVAL=60
enable_plugin ceilometer https://git.openstack.org/openstack/ceilometer stable/rocky
enable_plugin aodh https://git.openstack.org/openstack/aodh stable/rocky

# Tacker
enable_plugin tacker https://git.openstack.org/openstack/tacker stable/rocky

enable_service n-novnc
enable_service n-cauth

disable_service tempest
# Enable Kubernetes and kuryr-kubernetes
#KUBERNETES_VIM=True
#NEUTRON_CREATE_INITIAL_NETWORKS=False
#enable_plugin kuryr-kubernetes https://git.openstack.org/openstack/kuryr-kubernetes master
enable_plugin neutron-lbaas https://git.openstack.org/openstack/neutron-lbaas stable/rocky
#enable_plugin devstack-plugin-container https://git.openstack.org/openstack/devstack-plugin-container master

[[post-config|/etc/neutron/dhcp_agent.ini]]
[DEFAULT]
enable_isolated_metadata = True