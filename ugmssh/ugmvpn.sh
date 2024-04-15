#!/bin/sh -xe
sudo openvpn --dev tun --config /home/sena/ugmssh/OpenVPN-TCP-110-multiple-server.ovpn

# Open a new Kitty window and execute a command
kitty @ launch --title= sshpass -p "VBa36mp9" ssh -o StrictHostKeyChecking=no hanif@10.46.10.164"My New Window" --type=window -- bash -c "sshpass -p "VBa36mp9" ssh -o StrictHostKeyChecking=no hanif@10.46.10.164; exec bash"
#!/bin/sh -xe

#  # Start OpenVPN connection
#  printf "Starting OpenVPN connection...\n"
#  sudo openvpn --dev tun --config OpenVPN-TCP-110-multiple-server.ovpn &
#
#  # Wait for OpenVPN to initialize
#  printf "Waiting for OpenVPN to initialize...\n"
#  sleep 10 # Adjust the sleep time as needed
#
#  # Open a new Kitty window and execute the SSH command
#  printf "Opening a new Kitty window and executing SSH command...\n"
#  kitty @ launch --title="My New Window" --type=window -- bash -c "sshpass -p 'VBa36mp9' ssh -o StrictHostKeyChecking=no hanif@10.46.10.164; exec bash"
