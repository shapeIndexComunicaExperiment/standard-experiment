pushd ./simple-comunica-runner
    ./install.sh
popd

pushd ./simple-solidbench-comunica-runner
    ./install.sh
    yarn node index.mjs -q ../queries -c ../config.json -r 1 -e ../simple-comunica-runner/index.mjs -o ../results &> ../results/log
popd
