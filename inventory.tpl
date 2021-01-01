[all]
%{ for name, ips in servers ~}
%{ for ip in ips ~}
${ip}
%{ endfor ~}
%{endfor ~}

%{ for name, ips in servers ~}

[${name}]
%{ for ip in ips ~}
${ip}
%{ endfor ~}
%{ endfor ~}

[all:vars]
hostname=${hostname}
ansible_python_interpreter=/usr/bin/python3
