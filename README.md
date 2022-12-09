# computel-docker

### Install docker and post-installation steps
1. https://docs.docker.com/engine/install/ubuntu/
2. https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user

### Load submodules
```
cd computel
git submodule init
git submodule update
```

### Build the image
```
cd computel-docker
docker build -t computel-docker:latest .
```

### Container run 
```
docker run -it --rm -v $(pwd):/data computel-docker:latest computel.sh -1 <fq1> -2 <fq2> -o /<output_path_dir> 

```

### Test run
```
docker run -it -v $(pwd):/data computel-docker:latest computel.sh -1 computel/src/examples/tel_reads1.fq.gz -2 computel/src/examples/tel_reads2.fq.gz -o mytest -proc 4
```
