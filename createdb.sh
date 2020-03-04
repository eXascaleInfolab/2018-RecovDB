#!/bin/bash
monetdbd stop monetdb_farm
rm -rf monetdb_farm/
monetdbd create monetdb_farm
monetdbd start monetdb_farm
monetdb create testdb
monetdb release testdb
monetdb set embedpy=yes testdb

