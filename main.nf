#!/usr/bin/env nextflow

// enable dsl2
nextflow.enable.dsl=2

// import subworkflows
include {Testing} from './workflows/test.nf'

// main workflow
workflow {
    main:
        Testing()
}