cpp2wasm.sh -- скрипт создающий без emscripten миниатюрный wasm файл

### !!! Тут располагаются полезные примеры по чтению/записи в общий буфер памяти и примеры с динамическим размещением памяти
https://github.com/guybedford/wasm-intro

### если запускать так и генерить bc файл (байткод), то работает:
/media/shindin/08cc31db-3114-487f-b1d0-ee8b37169b5f/home/shindin/projects/rufey/src/sandbox/wa/emsdk-portable/emscripten/1.37.9/em++ main.cpp -o main.bc -O3 -s WASM=1 -I/home/shindin/myml/bai/misc/include/compat -I/home/shindin/myml/bai/misc/include/libcxx -I/home/shindin/myml/bai/misc/include/libc -I/home/shindin/myml/bai/misc/include/tiny-dnn -I/usr/share/emscripten/system/lib/libcxxabi/include -Wno-warn-absolute-paths -std=c++14

### а вот так скомпилировалось в wasm файл! (правда в утилитах самой библиотечки пришлось закомментировать пару строк в функции сериализации, похоже что сохранение моделей не будет работать, надо будет разобраться и исправить)
/media/shindin/08cc31db-3114-487f-b1d0-ee8b37169b5f/home/shindin/projects/rufey/src/sandbox/wa/emsdk-portable/emscripten/1.37.9/em++ main.cpp -o main.wasm -O3 -s WASM=1 -s SIDE_MODULE=1 -I/home/shindin/myml/bai/misc/include/compat -I/home/shindin/myml/bai/misc/include/libcxx -I/home/shindin/myml/bai/misc/include/libc -I/home/shindin/myml/bai/misc/include/tiny-dnn -I/usr/share/emscripten/system/lib/libcxxabi/include -Wno-warn-absolute-paths -std=c++14
