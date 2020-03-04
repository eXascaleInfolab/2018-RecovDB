# RecovDB: Recovery of missing values in MonetDB

## Prerequisities and dependencies

### MonetDB (macOS)

``` bash 
$ brew install monetdb
```

### MonetDB (Debian/Ubuntu)

https://www.monetdb.org/downloads/deb/
Follow the steps to add the repository up to and including `sudo apt update`.

Instead of installing `monetdb5-sql` and `monetdb-client` build from sources (step 2).
If any of those are installed, do `sudo apt purge monetdb5-sql`.
Download latest source from: https://www.monetdb.org/downloads/sources/Latest/


Extract and enter MonetDB-default/ directory with the sources. Open README-Debian and install all the packages listed as obligatory dependencies. In addition install the following optional dependencies:

``` bash 
$ sudo apt install libatomic-ops-dev python-dev python-numpy uuid-dev
$ ./bootstrap
$ ./configure --enable-pyintegration
$ make
$ make install
$ sudo apt install monetdb-client
```

### Python Libraries

``` bash 
$ pip3 install numpy
```

Install Anaconda2 from: https://docs.anaconda.com/anaconda/install/ into your 'HOME' folder

Path configuration 

``` bash 
Add this line to (.profile or .bash_profile on macOS, .bashrc on Linux): export PYTHONPATH="${PYTHONPATH}:'HOME'/anaconda2/lib/python2.7/site-packages/"
$ source .profile (or source bash_profile)
```
 
Restart your PC:

``` bash 
$ sudo shutdown -r now
```
___

## DB creation


``` bash 
$ touch ~/.monetdb
$ vim ~/.monetdb
user=monetdb
password=monetdb
```


``` bash 
$ ./createdb.sh
```
___

## Execution

### Matrix decomposition


``` sql
Replace "PATH" in decomp_udf.sql by the current path of the cloned folder
```


``` bash
$ ./connectdb.sh
sql> \<./decomp_udf.sql
sql> \q
```

### Recovery of missing values


``` sql
Replace "PATH" in recov_udf.sql by the current path of the cloned folder
```


``` bash
$ ./connectdb.sh
sql> \<./recov_udf.sql
sql> \q
```
___

## Citation
A demo of RecovDB is available [here](http://revival.exascale.info/recovery/recovdb.php).

Please cite the following paper when using RecovDB:
``` bash
@inproceedings{arous2019recovdb,
  title={RecovDB: Accurate and Efficient Missing Blocks Recovery for Large Time Series},
  author={Arous, Ines and Khayati, Mourad and Cudr{\'e}-Mauroux, Philippe and Zhang, Ying and Kersten, Martin and Stalinlov, Svetlin},
  booktitle={2019 IEEE 35th International Conference on Data Engineering (ICDE)},
  pages={1976--1979},
  year={2019},
  organization={IEEE}
}
```
