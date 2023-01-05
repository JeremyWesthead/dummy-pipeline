#!/usr/bin/env nextflow

// enable dsl2
nextflow.enable.dsl=2

// import subworkflows
include {Testing} from './workflows/test.nf'

process test {
    output:
    path("out.txt"), emit: txt

    script:
    """
    sleep 600
    echo 'this is a test2' > out.txt
    """
}
// main workflow
workflow {
    main:
        test()
}