# bb-Flask-Postgres

Barebones Docker Flask/Python and Postgres database. Use this as a set up to a VirtualBox VM and a Windows shared drive. You can view the site in your local browser by going to whatever your VM IP is. This runs Python 3.X and Flask, flask-SQLAlchemy, redis, marshmallow for HATEOAS, with test suite of pytest, behave.

You can remove any of the requirements as you see fit.

1. clone the repo to your shared drive, make sure it's mounted in your VirtualBox VM.
2. `docker build .`
3. `docker-compose up`
4. Success.
