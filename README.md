
## Making rails go without installing it via Docker? ##

clone then run this:

    docker-compose build

then

    docker-compose up

might require this:

    docker-compose run web rake db:create

> Note: If you stop the example application and attempt to restart it, you might get the following error: web_1 | A server is already running. Check /myapp/tmp/pids/server.pid. One way to resolve this is to delete the file `tmp/pids/server.pid`, and then re-start the application with `docker-compose up`.



**Next**:

 - Use mySQL, just because.
 - Make a couple pages...

