# Standard Shape Index Solidbench Experiment with Comunica

Experiments to benchmark solidbench queries comparing multiple reachability criteria, particularly the shape index one.
The queries are available in the `./queries` directory.
This experiment tests a setup where each dataset is described maximally using shapes and a shape index.

## Dependencies
 - [Nodejs version 22](https://nodejs.org/en)

Has only been tested on Linux

## Installation

Make sure that all the submodules [are correctly installed](https://git-scm.com/book/en/v2/Git-Tools-Submodules) 

## Running the experiment

First, the solidbench dataset must be generated and served locally.
```sh
pushd ./server
    ./install.sh
    yarn run solidbench-generate
    yarn run solidbench-serve
popd
```

Second, the experiment must be run through the benchmark runner.
To do so, first install comunica

```sh
pushd ./simple-comunica-runner
    ./install.sh
popd
```

second run, the benchmark runner

```sh
pushd ./simple-solidbench-comunica-runner
    yarn install
    yarn node index.mjs -q ../queries -c ../config.json -r 50 -e ../simple-comunica-runner/index.mjs -o ../results -n "standard-shape-index-experiment" &> ../results/log
popd
```

you can save each iteration of the benchmark to a nextcloud cloud storage using the `-b` parameter with the URL
of a cloud storage with a write permission.
The results will be materialized in the `./results` directory.
