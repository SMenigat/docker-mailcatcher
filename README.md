# docker-mailcatcher
Lightweight [Mailcatcher](https://mailcatcher.me/) Dockercontainer 🐋📨

### Running the container

The following snippet will make the mailcatcher web frontend available under `http://localhost:1080`. 
The SMTP Server can be accessed with `smtp://localhost:1025`.

```bash
$ docker run -d -p 1025:1025 -p 1080:1080 -n mailcatcher smenigat/mailcatcher
```
