UltraHeat 50
============

UltraHeat 50 is a lightweight `WSGI`_ website that exposes the ultraheat 50 metrics. The project poetry for package dependencies and docker for running.

Installing
----------

Install and update using `poetry`_:

.. code-block:: text

    $ poetry build
    or
    $ docker build . -T ultraheat50




Linting
-------

Linting using `poetry`_:

.. code-block:: text

    $ poetry run black uh50
    $ poetry run pylint uh50
    $ poetry run flake8 uh50
    $ poetry run mypy uh50
    $ poetry run black tests
    $ poetry run pylint tests
    $ poetry run flake8 tests
    $ poetry run mypy tests

testing
-------

Test using `poetry`_:

.. code-block:: text

    $ poetry run pytest
    $ poetry run coverage run -m pytest
    $ poetry run coverage report


Running
-------

Run using `poetry`_:

.. code-block:: text

    $ poetry run python uh50
    or
    $ docker run -p 8000:8000 -t ultraheat50



.. _poetry: https://python-poetry.org/docs/
.. _WSGI: https://wsgi.readthedocs.io/en/latest/what.html