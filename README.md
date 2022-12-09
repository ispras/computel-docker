# computel-docker

### in directory with Dockerfile
docker build -t computel-docker:latest .

### in directory with data
docker run -it --rm -v $(pwd):/data computel-docker:latest computel.sh -1 NIST7035_TAAGGCGA_L002_R1_001_trimmed.fastq.gz -2 NIST7035_TAAGGCGA_L002_R2_001_trimmed.fastq.gz -o /data/mytest -proc 4
