# computel-docker

### Install docker
1
2

### Load submodules
git submodule init
update


### Build the image
```
cd computel-docker
docker build -t computel-docker:latest .
```

### Container run 
```
docker run -it --rm -v $(pwd):/data computel-docker:latest computel.sh -1 <fq1> -2 <fq2> -o /data/<output_path_dir> 

```

### Test run
```
docker run -it -v $(pwd):/data computel-docker:latest computel.sh -1 computel/src/examples/tel_reads1.fq.gz -2 computel/src/examples/tel_reads2.fq.gz -o mytest -proc 4
```
