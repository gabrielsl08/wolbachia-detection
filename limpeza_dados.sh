# executa o programa FastQC em um arquivo de sequência de DNA ou RNA (geralmente no formato .fastq), a fim de avaliar a qualidade das leituras de sequenciamento geradas por tecnologias como Illumina.
fastqc SRRXXXXXXX.fastq

# uma ferramenta que combina o Cutadapt e o FastQC para pré-processar dados de sequenciamento, geralmente arquivos FASTQ, removendo sequências de baixa qualidade, adaptadores e bases indesejadas
trim_galore --fastqc -q 25 --trim-n --max_n 0 -j 1 --length 18 --dont_gzip SRRXXXXXXX.fastq
