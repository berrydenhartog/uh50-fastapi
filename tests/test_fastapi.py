from fastapi.testclient import TestClient

from uh50.__main__ import app

client = TestClient(app)


def test_read_main():
    response = client.get("/")
    assert response.status_code == 200
