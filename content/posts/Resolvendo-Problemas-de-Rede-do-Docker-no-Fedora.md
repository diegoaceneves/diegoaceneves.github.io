---
title: "Resolvendo Problemas De Rede Do Docker No Fedora"
date: 2020-10-06T10:05:15-03:00
draft: false
Categories: ["Linux","Fedora","Docker","Rede", "Portugês"]
Tags: ["Linux","Fedora","Docker","Rede", "Portugês"]
---
Depois de mais de 12 anos utilizando [Debian](http://debian.org) como workstation, resolvi migrar para [Fedora](https://fedoraproject.org/) à pouco mais de 6 meses, quando troquei o HD do notebook por um SSD, Os motivos iniciais da decisão de testar o Fedora foi o suporte nativo ao Luks para criptografar o disco durante a instalação e a vontade de aprender um pouco mais sobre como lidar no dia-a-dia com pacotes RPM e o ecossistema da [Red Hat](https://redhat.com/).

A migração foi super tranquila, como sempre gostei de utilizar o Gnome, desde a versão 2, a interface não foi um problema já que ambos utilizam o [Gnome Shell](https://gnome.org), e lidar com SELinux e FirewallD foram facilitados utilizando o [Cockpit](https://cockpit-project.org/), O unico problema encontrado foi referente ao Docker, que por algum motivo, os containeres e o build não conseguiam acesso a internet.

Navegando nas listas de discussões e foruns, verifiquei que, como o Docker cria uma nova interface por onde ele faz NAT para o acesso dos containers, precisaria adicionar essa nova interface na zona "Trusted" no firewalld, que pode ser feito de forma simples, com o comando:

```bash
# firewall-cmd --permanent --zone=trusted --add-interface=docker0
# firewall-cmd --reload
```

Ao reiniciar o docker, tanto o build quando o acesso dos containers à internet funcionou corretamente.