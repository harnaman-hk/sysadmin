## 1. VPN Setup
1. I created an AWS EC2 service and then used streisand to setup a VPN.
2. Streisand is a fairly easy way to setup secure VPNs to bypass censorship, provided you don't run into installation errors.
3. I faced installation errors with elastic IPs (this was a non-transient error), gpg keyring refresh and OpenVPN configuration. These were resolved by making a few changes in the streisand setup.
  
### Resources
1. [StreisandEffect/streisand]((https://github.com/StreisandEffect/streisand)) 
Code Repository & Issues
2. [Streisand installation](https://github.com/StreisandEffect/streisand/blob/master/Installation.md)