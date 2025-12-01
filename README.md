# RecovDB: Time series data cleaning inside MonetDB


## UDF Configuration

### Ubuntu/Debian



``` bash 
$ sh monetdb_install.sh
$ sh createdb.sh
```

### MacOS


``` bash 
$ brew install monetdb
$ pip3 install numpy
$ sh createdb.sh
```

- You might also need to configure the Python path: 

  - Install Anaconda2 from: https://docs.anaconda.com/anaconda/install/ onto your 'HOME' folder

  - Add the following line to (.profile or .bash_profile): `export PYTHONPATH="${PYTHONPATH}:'HOME'/anaconda2/lib/python2.7/site-packages/"`

  - Execute the changes
``` bash 
   $ source .profile (or source bash_profile)
   $ sudo shutdown -r now
```

___


## Execution

### Recovery of missing values inside MonetDB

To impute overlapping missing blocks in two climate time series located in `recovery/input/original.txt`, run the following

``` bash
$ sh connectdb.sh
sql> \<./recov_udf.sql
sql> \q
```

### Time series decomposition  inside MonetDB

To decompose a matrix of time series located in `decomposition/input/climate.csv`

``` bash
$ sh connectdb.sh
sql> \<./decomp_udf.sql
sql> \q
```

___

## Customization

To add a dataset to the imputation:
- Name your file `original.txt` and add it to `recovery/input/`
- Requirements:  columns= 4, column separator: empty space, row separator: newline

To add a dataset to the decomposition:
- Name your file `climate.csv` and add it to `decomposition/input/`
- Requirements:  column separator: empty space, row separator: newline

___

## Graphical Interface

RecovDB is also available as [GUI](http://revival.exascale.info/recovery/recovdb.php).
___


## Contributors

- Ines Arous
- [Mourad Khayati](https://mkhayati.github.io)

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
