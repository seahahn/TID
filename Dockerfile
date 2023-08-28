FROM postgres:14.5

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
  sed -i 's/# C.UTF-8 UTF-8/C.UTF-8 UTF-8/' /etc/locale.gen && \
  locale-gen

ENV LANG=C \
  LC_COLLATE=C \
  POSTGRES_INITDB_ARGS=--data-checksums