# move "through" a firewall by initiating tunnel from the inside of the
# firewalll then allowing traffic through the firewall via the tunnel

# From machine inside firewall:
ssh -R 8888:localhost:80 remote_machine # create reverse tunnel from remote port
                                        # 8888 to local:80
# prompts for password
# Then remote_machine's port 8888 will redirect to machine inside firewall's
# localhost:80

# Can now be accessed from a 3rd machine as well
# On 3rd machine:
ssh -L 8000:localhost:8888 remote_machine # redirects to remote_machine's 8888
                                          # which redirect to firewalled 80

