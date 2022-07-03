ARG PYTHONVERSION=3.10
ARG POETRYVERSION=1.1.13

from python:${PYTHONVERSION}-slim as builder
ARG POETRYVERSION

RUN pip install poetry==${POETRYVERSION}
RUN poetry config virtualenvs.in-project true

WORKDIR /app/
COPY ./poetry.lock ./pyproject.toml ./
COPY ./uh50 ./uh50
COPY ./README.rst ./README.rst

RUN poetry install --no-dev
RUN poetry build

FROM python:${PYTHONVERSION}-slim
ARG PYTHONVERSION

ENV PYTHONUNBUFFERED=1

COPY --from=builder /app/dist/*.whl /tmp/
RUN pip install --no-cache-dir /tmp/*.whl
EXPOSE 8000

CMD ["uvicorn" , "uh50.app", "--host","0.0.0.0", "--port","8000" ]
