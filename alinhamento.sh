# é utilizado para construir um índice a partir de um arquivo de referência em formato FASTA, que pode ser usado posteriormente para alinhar sequências com o programa Bowtie.
bowtie-build reference.fasta reference_index

# O Bowtie é utilizado para alinhar as sequências de leitura presentes no arquivo sample.fasta contra o índice de referência reference_index.O alinhamento é realizado com zero erros permitidos (-v 0), todos os alinhamentos possíveis para cada leitura (-a), e o processo usa 3 threads paralelas (-p 3).O tempo gasto em diferentes etapas do alinhamento é reportado (-t).A saída do alinhamento é salva no arquivo sample.sam no formato SAM. Quaisquer mensagens de erro ou logs são salvos no arquivo sample_bowtie.log.
bowtie -f -S -a -v 0 -p 3 -t reference_index sample.fasta > sample.sam 2> sample_bowtie.log
