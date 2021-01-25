# vim
# install vim-plug 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# install YCM
cd ~/.vim/plugged/YouCompleteMe
./install.py --clang-completer
./install.py --go-completer
or 
./install.py --all
```
[Mon Jan 25 04:32:26][#63# ] (master)$python3 install.py --help
usage: build.py [-h] [--clang-completer] [--clangd-completer] [--cs-completer] [--go-completer] [--rust-completer]
                [--java-completer] [--ts-completer] [--system-boost] [--system-libclang] [--msvc {15,16}]
                [--ninja] [--all] [--enable-coverage] [--enable-debug] [--build-dir BUILD_DIR] [--quiet]
                [--skip-build] [--valgrind] [--clang-tidy] [--core-tests [CORE_TESTS]] [--cmake-path CMAKE_PATH]

optional arguments:
  -h, --help            show this help message and exit
  --clang-completer     Enable C-family semantic completion engine through libclang.
  --clangd-completer    Enable C-family semantic completion engine through clangd lsp server.(EXPERIMENTAL)
  --cs-completer        Enable C# semantic completion engine.
  --go-completer        Enable Go semantic completion engine.
  --rust-completer      Enable Rust semantic completion engine.
  --java-completer      Enable Java semantic completion engine.
  --ts-completer        Enable JavaScript and TypeScript semantic completion engine.

# install go binary 
:GoUpdateBinaries
