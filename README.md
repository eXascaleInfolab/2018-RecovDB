# RecovDB: Recovery of missing values inside MonetDB

## Prerequisities and dependencies

### MonetDB (macOS)

#### Installation
``` bash 
$ brew install monetdb
$ pip3 install numpy
$ git clone https://github.com/eXascaleInfolab/2018-RecovDB.git recovdb
$ cd recovdb/
$ sh /db/db_init.sh
$ sh createdb.sh
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



___


### MonetDB (Debian/Ubuntu)


``` bash 
$ git clone https://github.com/eXascaleInfolab/2018-RecovDB.git recovdb
$ cd recovdb/
$ sh /db/monetdb_install.sh
$ sh /db/db_init.sh
$ sh createdb.sh
```
___


## Execution

### Recovery of missing values in time series


``` bash
$ sh connectdb.sh
sql> \<./recov_udf.sql
sql> \q
```

### Centroid Decomposition of time series


``` bash
$ sh connectdb.sh
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
