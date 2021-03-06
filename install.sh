wget https://www.python.org/ftp/python/2.6.9/Python-2.6.9.tgz
tar -xzvf Python-2.6.9.tgz
cd Python-2.6.9
./configure --prefix=/usr/local --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib"
make && make altinstall

wget https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz
tar -xzvf Python-3.5.0.tgz
cd Python-3.5.0
./configure --prefix=/usr/local --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib"
make && make altinstall

Delete package without removing dependencies
---------------------------------------------
rpm -e --nodeps <package-name>

To find macros
---------------
rpm --eval '%{macro_name}'

To list all macros
------------------
rpm --showrc

