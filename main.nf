#!/usr/bin/env nextflow

// enable dsl2
nextflow.enable.dsl=2

process test {
    output:
    path("out.txt"), emit: txt

    script:
    """
    sleep 120
    echo 'this is a test2' > out.txt
    """
}
// main workflow
workflow {
    main:
        test()
}