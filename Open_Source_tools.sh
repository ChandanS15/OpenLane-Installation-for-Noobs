echo
echo "=============================================="
echo "----KICK OFF Magic Installation----"
echo "=============================================="
echo

cd
git clone https://github.com/RTimothyEdwards/magic
cd magic/
./configure
make
sudo make install
cd

echo
echo "=============================================="
echo "----KICK OFF KLayout----"
echo "=============================================="
echo

cd
sudo apt install klayout

echo
echo "=============================================="
echo "----KICK OFF Netgen----"
echo "=============================================="
echo

cd
git clone https://github.com/RTimothyEdwards/netgen
cd netgen/
./configure
make 
sudo make install
cd

echo
echo "=============================================="
echo "----KICK OFF Xschem----"
echo "=============================================="
echo


cd
git clone https://github.com/StefanSchippers/xschem.git
cd xschem/
./configure
make
sudo make install
cd

echo
echo "=============================================="
echo "----KICK OFF Ngspice----"
echo "=============================================="
echo

cd
git clone git://git.code.sf.net/p/ngspice/ngspice
cd ngspice/
git checkout pre-master
./autogen.sh --adms
mkdir release
cd release 
../configure --with-x --enable-xspice --disable-debug --enable-cider --with-readline=yes --enable-openmp
make -j4
sudo make install
cd

echo
echo "=============================================="
echo "----KICK OFF Open_pdks----"
echo "=============================================="
echo
