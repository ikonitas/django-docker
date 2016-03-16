Django docker
=============

Setup
~~~~~

.. code-block:: sh

    sudo docker build -t projectname:1.0 .

    sudo docker-compose run web django-admin startproject projectname 


Runserver
~~~~~~~~~

Locally

.. code-block:: sh

    sudo docker-compose up

Production

Add `command: ./run_production.sh` in `docker-compose.yaml`.

Remove containers
~~~~~~~~~~~~~~~~~

.. code-block:: sh
    
    sudo docker ps -q -a | sudo xargs docker rm
