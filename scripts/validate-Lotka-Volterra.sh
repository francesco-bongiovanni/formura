./scripts/cleanvalidate.sh pearson-3d
mkdir -p out images
rm out/* images/*
 mpiexec -n 8 ./bin/pearson-3d.out 300 10
./scripts/plot-pearson-bin.py out/monitor-*.txt
