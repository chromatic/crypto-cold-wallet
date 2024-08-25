FROM perl:5.40-slim
LABEL org.opencontainers.image.source="https://github.com/chromatic/crypto-cold-wallet"

RUN apt update && \
    apt install -y --no-install-recommends libtomcrypt-dev libqrencode-dev build-essential pkg-config && \
    cpm install -g --show-build-log-on-failure Bitcoin::Crypto App::Bitcoin::PaperWallet && \
    apt remove -y --purge build-essential && \
    apt autoremove -y --purge && \
    apt autoclean

ENTRYPOINT ["paper-wallet"]
CMD ["--help"]
