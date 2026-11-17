FROM python:3.11-bookworm

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    build-essential \
    python3-dev \
    libjsoncpp-dev \
    gprolog \
    unzip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

COPY modified_sources/external/MeGASampler/megasampler.cpp external/MeGASampler/megasampler.cpp

RUN cd external/z3 \
    && python scripts/mk_make.py --python \
    && cd build \
    && make -j$(nproc)

RUN cd external/MeGASampler && make -j$(nproc)

RUN chmod +x external/csb/csb

CMD ["python", "runner.py"]