---
title: "De Sysadmin Ao DevOps Parte 1"
date: 2020-06-04T17:02:19-03:00
draft: false
Categories: ["Portugues", "Sysadmin", "DevOps"]
Tags: ["Portugues", "DevOps", "Linux", "Software Livre", "Kernel"]
---
Vou escrever uma série de textos sobre o caminho que já percorri desde o início da carreira como sysadmin.

Há muito tempo atrás, numa galaxia muito distante, nascia durante o estágio no primeiro periódo da faculdade de Sistemas de Informação, o SysAdmin. Super empolgado com o fato de poder compilar todo  código fonte disponível na internet, passou a ter sempre o [kernel](https://www.kernel.org/) mais atual e compilar o [iptables](https://pt.wikipedia.org/wiki/Iptables) para ativar os filtros de layer 7 no recém lançado [Debian](https://debian.org) Sarge, tudo isso, graças ao [Guia Foca](https://guiafoca.org/) e aos milhares de artigos no site [Viva o Linux](https://www.vivaolinux.com.br/).

Em uma época que começou a surgir "conexões de banda larga", com conexões de internet "super velozes" com 150kbps de download e 50 de upload ter um [Squid](http://www.squid-cache.org/) com proxy transparente era necessário pra que toda empresa pudesse acessar a internet.

Anos se passaram e as velhas estações de trabalho usadas como servidores começaram a ser substituidas por maquinas virtuais, os hubs ethernet e os switchs fast a ser substituidos por redes gigabit e os ativos passaram a ser monitorados com [Zabbix](https://www.zabbix.com/).

Para facilitar e automatizar algumas tarefas repetitivas, Scripts em [Shell](https://pt.wikipedia.org/wiki/Shell_script), [PHP](https://php.net) e [Python](https://python.org) foram feitos e claro, um centralizador de logs foi necessário.
Esses Scripts, principalmente em Shell, começam tomar forma e serem cada vez mais necessários, e os cursos, livros e palestras dos mestres [Júlio Neves](https://twitter.com/juliobash) e [Aurelio Marinho](https://twitter.com/oreio) foram a chave para tentar automatizar tudo que se podia, da instalação de todos os pacotes necessários em um novo servidor à criação de ferramentas para monitorar e coletar informações em equipamentos.

Porem em um ambiente com muitas maquinas fica impossível manter tudo homogeneo apenas com alguns scripts. Foi quando em uma palestra do [Guto Carvalho](https://twitter.com/gutocarvalho) os "Gerenciadores de Configurações" foram apresentados, o [Puppet](https://puppet.com/), resolvia praticamente todos problemas de automação, mantendo tudo simples e bem configurado.

A automação se tornou um vício, os scripts em shell ajudavam no gerenciamento e configuração de ativos de rede, o Puppet gerenciava uma grande quantidade de servidores e desktops, desde que fosse instalado um agent e essa instalação, embora simples, já começou a se tornar repetitiva.

E foi assim, que pesquisando, encontrei, conheci o [Ansible](https://www.ansible.com/), mas isso é o que vou contar na [parte 2].
