cd repos/linux
make allmodconfig
make LLVM=-17 -j$(nproc)
./scripts/clang-tools/gen_compile_commands.py
clangd-indexer --executor=all-TUs --format=yaml compile_commands.json 1> linux-clangd-dex.yaml 2> indexer.log