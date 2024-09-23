set -x
apt-get update && apt-get upgrade &&
apt-get install vim ctags git
. gitAlias.sh
apt-get install openssh gh
cp ~/../usr/etc/ssh/ssh_host_ed25519_key ~/.ssh/id_ed25519
cp ~/../usr/etc/ssh/ssh_host_ed25519_key.pub ~/.ssh/id_ed25519.pub
ssh-keygen -lf ~/.ssh/id_ed25519.pub -E sha256 #GitHub converts fingerprint to Sha256 hash
cp ./gitinit ~/bin/
gitinit

