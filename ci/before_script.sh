#!/bin/bash -e

rustup component add rustfmt-preview --toolchain=$TRAVIS_RUST_VERSION
cargo install cargo-update || echo "cargo-update already installed"
cargo install cargo-travis || echo "cargo-travis already installed"
if test "$TRAVIS_RUST_VERSION" = "nightly"; then
    cargo install clippy || echo "Clippy already installed"
fi

cargo install-update -a
