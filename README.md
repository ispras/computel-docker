# computel-docker

## Запуск


sudo docker run -it --rm -v /home/mayer/gitlab/computel-docker/mytest:/computel/mytest fe030ba81b68 computel/src/examples/tel_reads1.fq.gz -2 computel/src/examples/tel_reads2.fq.gz -o computel/mytest