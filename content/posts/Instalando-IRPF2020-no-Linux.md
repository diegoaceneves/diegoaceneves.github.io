---
title: "Instalando IRPF2020 No Linux"
date: 2020-06-18T11:22:24-03:00
draft: false
Categories: ["Linux", "Java", "IRPF"]
Tags: ["Linux", "Java", "IRPF"]
---
Sim, estamos em 2020 e ainda não é tão fazer a instalação do Sistema de Declaração de Imposto de Renda no Linux, embora no site tenha link de download para várias plataformas parantemente para ambientes Unix Like parece não funcionar muito bem, por isso resolvi fazer esse how-to.
Por motivos de homologação do sistema, não é possível utililzar o open-jdk que geralmente já vem instalado ou disponível nos repositórios das distribuições mais comuns então antes de começar, vamos acessar o [link](https://www.java.com/pt_BR/download/linux_manual.jsp) efetuar o download do java, embore esteja usando Fedora e tenha o pacote .rpm disponível, eu sempre baixo o tar.gz e descompacta-lo no dirétorio recomendado.
```bash
$ wget https://javadl.oracle.com/webapps/download/AutoDL?BundleId=242050_3d5a2bb8f8d4428bbe94aed7ec7ae784 -O /tmp/jre.tar.gz
$ cd /opt
$ sudo tar -xvzf /tmp/jre.tar.gz
```
Para facilitar a manutenção do java eu costumo criar um link para a versão instalada, assim posso apenas baixar e descompactar a nova versão e refazer o link.

```bash
$ sudo $ ln -s jre1.8.0_251/ java
```
E vamos efetuar a instalação usando o comando update-alternatives:
```bash
$ sudo update-alternatives --install /usr/bin/java java /opt/java/bin/java 0
$ sudo update-alternatives --set java /opt/java/bin/java
```
E testar se o java realmente foi instalado:
```bash
$ java -version
java version "1.8.0_251"
Java(TM) SE Runtime Environment (build 1.8.0_251-b08)
Java HotSpot(TM) 64-Bit Server VM (build 25.251-b08, mixed mode)
```
 Após a instalação do java, vamos efetuar o download do programa no [site da Receita](), porem diferente do listado lá, vamos baixar a versão "[Multiplataforma (zip)](http://downloadirpf.receita.fazenda.gov.br/irpf/2020/irpf/arquivos/IRPF2020-1.8.zip)" e descompacta-la
 ```bash
$ wget http://downloadirpf.receita.fazenda.gov.br/irpf/2020/irpf/arquivos/IRPF2020-1.8.zip -O /tmp/IRPF2020-1.8.zip
$ unzip /tmp/IRPF2020-1.8.zip
$ cd IRPF2020
```
Pronto, para executar o aplicativo basta abrir o terminal e digitar o comando:
```bash
$ java -jar /opt/IRPF2020/irpf.jar
```