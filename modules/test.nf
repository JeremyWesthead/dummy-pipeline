process getRefFiles {
    /**
    * fetches reference file from 
    */

    output:
    path("ref.fasta"), emit: fasta
    path("ref.bed"), emit: bed

    script:
    refURL=params.refURL
    bedURL=params.bedURL
    """
    wget $refURL -O ref.fasta
    wget $bedURL -O ref.bed
    """
}

process getRefFiles2 {
    output:
    path("nextflow.bin"), emit: bin

    script:
    """
    wget wget https://github.com/nextflow-io/nextflow/releases/download/v22.12.0-edge/nextflow-22.12.0-edge-all -O nextflow.bin
    """
}