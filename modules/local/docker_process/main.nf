process docker_process {
    container 'docker.io/twincacca/monrna:latest'
    tag "monrna"
    cpus 12

    output:
    stdout

    script:
    """
    bash /app/run.sh
    """
}

