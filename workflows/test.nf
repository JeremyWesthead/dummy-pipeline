
// enable dsl2
nextflow.enable.dsl = 2

// import modules
include {getRefFiles} from '../modules/test.nf'

workflow Testing {
    main:
        getRefFiles()
}