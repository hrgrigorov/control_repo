class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCmWtHCwDc5sbcTp64vI6swucql1AsHEZxpqjsLCXfM9yVF9QFKi6DPy6zSBc24TflQrdPmTSj59JoI7JUAqsYeRjWXHhtpaemOzXsz3LpbpygLxf+cg3LuCXiourBtVgaFdGLAwHE5PlAOJopxVddoaR3egR9DOOjIz2PaCRfPtGP5JC9yt5bL6CLk/Q/3tk264SPUGMzlH9apH9eJLCy6n56MD07ptMMdms1BKbpecQDmP+eyZZr/njmKeXVFjP50GqvYjBlx5uYdSdNn9T+rlZn2ZbsHTyTsz/wxrV/do0IDRsu0i3vhkmyC2Gz3gZ9Pp77X9Kr2pfWo29PvsSC1',
	}  
}
