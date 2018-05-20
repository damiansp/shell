ssh-keygen # generates public/private rsa key pair
# will prompt for location to save

# copy public key to repo admin
ssh-copy-id -i .ssh/id_rsa.pub administrator@repo
# will prompt to connect and for admin password

# In repo machine
ls .ssh # authorized_keys includes copied in key from id_rsa.pub

# Can of course add keys manually (e.g., copy and paste from an email)

# Can now log in to remote machine (as administrator in this case):
ssh administrator@repo
