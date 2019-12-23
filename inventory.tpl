%{ for name, ips in servers ~}
[${name}]

%{ for ip in ips ~}
${ip}
%{ endfor ~}
%{ endfor ~}
