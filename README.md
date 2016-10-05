Description
===========

The project is just a example about how to create a simple application with Rest Services and Hibernate.

The Rest Services are in the class "es.josecamps.quickstart.TestController". The examples you can find are:

* ping. Service with no parameters.

    Return a String.
  Example.

  curl http://localhost:8080/quickstart-web-dev/test/ping

* echo.  Service with one entry parameter,
    type String.

    Return a String.

  Example.  
  curl http://localhost:8080/quickstart-web-dev/test/echo?text=PRUEBA

* echojson. Service with one entry parameter,
    type JSON.

    Return a JSON.

  Example.  
  curl -X POST -d '{"num":1}'  http://localhost:8080/quickstart-web-dev/test/echojson -H "Content-type: application/json; charset=utf-8"


* echojson.  Service with two entry parameters,
    type number
    and type JSON.

    Return a JSON.
  curl -X POST -d '{"num":1}'  http://localhost:8080/quickstart-web-dev/test/addjson?num=1 -H "Content-type: application/json; charset=utf-8"

TODO description environment



Install
=======
{context-aplication}/vagrant up


mvn clean install -P dev


Examples
========


vagrant ssh -c "sudo -u postgres pg_dump -C -f /tmp/quickstart.sql quickstart"
vagrant ssh -c "sudo mv /tmp/quickstart.sql /vagrant/env/"
cd ..
