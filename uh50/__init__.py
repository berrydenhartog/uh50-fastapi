from typing import Optional

from fastapi import FastAPI
from pydantic import BaseModel


class HelloWorld(BaseModel):
    hello: Optional[str]
    world: Optional[str]


def create_app() -> FastAPI:
    app = FastAPI()

    @app.get("/", response_model=HelloWorld)
    async def read_root() -> HelloWorld:
        hello = HelloWorld()
        return hello

    return app
