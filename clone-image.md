docker save rmi-python3 | bzip2 | pv | ssh -p 5559 mastrogiovanni@localhost 'bunzip2 | docker load'

