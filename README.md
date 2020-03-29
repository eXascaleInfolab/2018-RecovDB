# RecovDB: Recovery of missing values inside MonetDB

## Prerequisities and dependencies

### MonetDB (macOS)

#### Installation
``` bash 
$ brew install monetdb
$ pip3 install numpy
```

#### Python configuration

- Install Anaconda2 from: https://docs.anaconda.com/anaconda/install/ in your 'HOME' folder

- Add the following line to (.profile or .bash_profile on macOS, .bashrc on Linux):
 `export PYTHONPATH="${PYTHONPATH}:'HOME'/anaconda2/lib/python2.7/site-packages/"`

- Execute and restart:
``` bash 
$ source .profile (or source bash_profile)
$ sudo shutdown -r now
```

### MonetDB (Debian/Ubuntu)

1. Follow the steps in https://www.monetdb.org/downloads/deb/ until `sudo apt update`. In case you have installed `monetdb5-sql` and/or `monetdb-client`, delete it using `sudo apt purge monetdb5-sql`.

2. Download the latest monetdb source from: https://www.monetdb.org/downloads/sources/Latest/

3. Enter the extracted folder, open README-Debian and install all the packages listed as required. Then, run the following commands: 

``` bash 
$ sudo apt install libatomic-ops-dev python-dev python-numpy uuid-dev
$ ./bootstrap
$ ./configure --enable-pyintegration
$ make
$ make install
$ sudo apt install monetdb-client
```


___

## DB creation

``` bash 
$ touch ~/.monetdb
$ vim ~/.monetdb
user=monetdb
password=monetdb
```
Run the following script inside the cloned folder
``` bash 
$ ./createdb.sh
```
___

## Execution

### Recovery of missing values in time series


``` sql
Replace "PATH" in recov_udf.sql by the absolute path of the current folder
```


``` bash
$ ./connectdb.sh
sql> \<./recov_udf.sql
sql> \q
```

### Centroid Decomposition of time series


``` sql
Replace "PATH" in decomp_udf.sql by the absolute path of the current folder
```


``` bash
$ ./connectdb.sh
sql> \<./decomp_udf.sql
sql> \q
```

### Graphical RecovDB

RecovDB is also avilable as a GUI [here](http://revival.exascale.info/recovery/recovdb.php).
___

## Citation

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
