#!/usr/bin/env nextflow
log.info """\
    Simple container run
    ===================================
    Hello!
    Example usage: nextflow run main.nf
    ===================================
    """
    .stripIndent()

process docker_process {
    container 'twincacca/monrna:latest'
    tag "monrna"

    output:
    stdout

    script:
    """
    bash /app/run.sh
    """
}

workflow {
    docker_process()
    docker_process.out.view()
}




