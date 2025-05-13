process docker_process {
    container 'docker.io/twincacca/monrna:latest'
    tag "monrna"

    output:
    stdout

    script:
    """
    bash /app/run.sh
    """
}

