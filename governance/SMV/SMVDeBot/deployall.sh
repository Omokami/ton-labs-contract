#!/bin/bash
set -e
#input
export CLI_PATH=~/test/tonos-cli/target/release
export LOCAL_GIVER_PATH=~/givers/local_giver/
export NET_GIVER_PATH=~/givers/net_giver/

#export DEPLOY_LOCAL=1
export SUPER_ROOT_ADDRESS=0:4e1bcac1f07ab3d139fac4c524716e66c94f74bd13b5608a8ef579a7f3b06c57
export SMV_STAT_ADDRESS=0:6a01c3ebee13eba6732929e54bb43996ed90c9e90ebcdf4333962c95a3f4bd6b
export MSIG_DEBOT_ADDRESS=0:d2eb2fae3bb54d131814ffcf3f176b915eaf71f113b1701d676aba3f6b4d1e4d



cd smvStats
./deploy.sh
cd ..

cd proposalRoot
./deploy.sh
cd ..

cd multiballot
./deploy.sh
cd ..

cd superRoot
./deploy.sh
cd ..

echo EVERYTHING DONE


