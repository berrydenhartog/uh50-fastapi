import pytest

from fastapi.testclient import TestClient

from uh50.main import app


client = TestClient(app)


def test_read_main():
    response = client.get("/")
    assert response.status_code == 200
