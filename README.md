# ntireader-www
## NTI Buddhist Text Reader

A text reader, including dictionary and tools, for analyzing and managing Buddhist texts in Chinese and Sanskrit. This is a non-profit, open source project. You can find the source code in https://github.com/alexamies/buddhist-dictionary

There are three parts to the project:

 1. The web user interface. This includes HTML, PHP, and JavaScript
    files.
 2. The data. This is the dictionary and text files. The data files are
    in UTF-8 tab delimited text. There is also a corpus directory, which
    contains the literature to build the vocabulary and word sense
    frequency from. These are Chinese and Sanksrit texts from the
    Buddhist canon and related collections. The corpus files include
    part-of-speech (POS) tagged documents and untagged documents.
 3. Command line tools. For building vocabulary. These are in Python.
    This includes a POS tagger and HTML annotation tool.

This docker image is the web user interface part which include the logic to create database and load data.

## Get it

sudo docker pull qizha/ntireader-www

## Run it

1.Launch database container
> sudo docker run --name db -P -e MYSQL_ROOT_PASSWORD=admin -d mysql

2.Retrieve the IP address with command 

> docker inspect db|grep IP

3.Launch neireader-www container
> docker run --name ntireader--link db:db -d -e DB_HOST=172.17.0.51 -e DB_USER=root -e DB_PASSWORD=admin -P qizha/ntireader-www:0.53
