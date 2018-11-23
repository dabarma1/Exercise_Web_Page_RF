# Sample exercice to test a web using Robt Framework

## External resources

You can run a ride using docker using:
```sh
$ docker run -d --rm --name="ride" -v $(pwd)/config:/config:rw -v $(pwd)/robot:/robot -p 8080:8080 ivonet/robotframework-ride
```