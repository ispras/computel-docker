# computel-docker

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
cd test
docker run -it -v $(pwd):/data computel-docker:latest computel.sh -1 tel_reads1.fq.gz -2 tel_reads2.fq.gz -o /data/mytest -proc 4
```
