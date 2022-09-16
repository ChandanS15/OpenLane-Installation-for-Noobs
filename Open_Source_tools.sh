echo "=================================="
echo "---KICK OFF DOCKER INSTALLATION---"
echo "=================================="

sudo apt install docker.io


sudo systemctl start docker

sudo systemctl enable docker

echo "=================================="
echo "----------DOCKER  ENABLED---------"
echo "=================================="

docker --version

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


echo "======================================"
echo "----KICK OFF OpenLane INSTALATTION----"
echo "======================================"
echo

git clone https://github.com/The-OpenROAD-Project/OpenLane.git
cd OpenLane/
make pddk
make test

echo
echo "=============================================="
echo "----KICK OFF Skywater-pdk----"
echo "=============================================="
echo
cd OpenLane
cd pdks
git clone https://github.com/google/skywater-pdk
cd skywater-pdk
git submodule init libraries/sky130_fd_io/latest
git submodule init libraries/sky130_fd_pr/latest
git submodule init libraries/sky130_fd_sc_hd/latest
git submodule init libraries/sky130_fd_sc_hvl/latest
git submodule update
make -j$(nproc) timing
cd


echo
echo "=============================================="
echo "----KICK OFF Open_pdks----"
echo "=============================================="
echo

cd ~/OpenLane
cd pdks
git clone https://github.com/RTimothyEdwards/open_pdks.git
./configure --enable-sky130-pdk=~/OpenLane/pdks/skywater-pdk/libraries --with-sky130-variants=All    
make
sudo make install
cd


