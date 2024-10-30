pushd ./server
    ./install
    yarn run solidbench-generate
    yarn run solidbench-serve &
popd
