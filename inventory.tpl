%{ for name, ips in servers ~}
[${name}]

%{ for ip in ips ~}
${ip}
%{ endfor ~}

[${name}:vars]
ansible_python_interpreter=/usr/bin/python3
%{ endfor ~}
